# Copyright (C) 2012–2013  Alex Schroeder <alex@gnu.org>
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; either version 3 of the License, or (at your option) any later
# version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with
# this program. If not, see <http://www.gnu.org/licenses/>.

use strict;
use v5.10;

=head1 Private Pages Extension

This module allows you to hide the content of particular pages in Oddmuse.
Unlike the I<Hidden Pages Extension>, this is not based on the user's role of
editor or administrator. Instead, every page can have a different password by
beginning it with #PASSWORD XYZZY where XYZZY is the password required to read
it. Multiple passwords can be supplied, separated by spaces.

Note that all the meta information of the private page remains public: The
I<name> of the page, the fact that is has been edited, the author, the
revision, the content of past revisions that have not been protected by a
password all remain visible to other users.

Notes:

=over

=item * If you're protecting a comment page, people can still leave comments
        -- they just can't read the resulting page.

=back

=cut

AddModuleDescription('private-pages.pl', 'Private Pages Extension');

our (%IndexHash, %Page, $OpenPageName, $Now, @MyRules);

sub PrivatePageLocked {
  my $text = shift;
  my ($line) = split(/\n/, $text, 1);
  my @token = split(/\s+/, $line);
  my $lock = 0;
  if (shift(@token) eq '#PASSWORD') {
    my $pwd = GetParam('pwd', '');
    $lock = 1;
    foreach (@token) {
      if ($pwd eq $_) {
	$lock = 0;
	last;
      }
    }
  }
  return $lock;
}

*OldPrivatePagesUserCanEdit = \&UserCanEdit;
*UserCanEdit = \&NewPrivatePagesUserCanEdit;

sub NewPrivatePagesUserCanEdit {
  my ($id, $editing, @rest) = @_;
  my $result = OldPrivatePagesUserCanEdit($id, $editing, @rest);
  # bypass OpenPage and GetPageContent (these are redefined below)
  if ($result > 0 and $editing and $IndexHash{$id}) {
    my $data = ParseData(ReadFileOrDie(GetPageFile($id)));
    if (PrivatePageLocked($data->{text})) {
      return 0;
    }
  }
  return $result;
}

*OldPrivatePageNewText = \&NewText;

sub NewPrivatePageNewText {
  return Ts('This page is password protected. If you know the password, you can %s. Once you have done that, return and reload this page.',
	    '[' . ScriptUrl('action=password') . ' '
	    . T('supply the password now') . ']');
}

# prevent unauthorized reading

# If we leave $Page{revision} set, PrintWikiToHTML will save the new
# PrivatePageMessage as the new page content. If we don't set $Page{revision},
# BrowsePage() will show NewText(). Therefore we need to override NewText(). If
# we have no $Page{ts}, PageDeletable will return 1. As a workaround, we set a
# timestamp. Aging of the page doesn't matter since the text starts with
# #PASSWORD and therefore cannot be the empty string or $DeletedPage.

*OldPrivatePagesOpenPage = \&OpenPage;
*OpenPage = \&NewPrivatePagesOpenPage;

sub NewPrivatePagesOpenPage {
  OldPrivatePagesOpenPage(@_);
  if (PrivatePageLocked($Page{text})) {
    %Page = (); # reset everything
    $Page{ts} = $Now;
    *NewText = \&NewPrivatePageNewText;
  } else {
    *NewText = \&OldPrivatePageNewText;
  }
  return $OpenPageName;
}

# prevent reading of page content by other code

*OldPrivatePagesGetPageContent = \&GetPageContent;
*GetPageContent = \&NewPrivatePagesGetPageContent;

sub NewPrivatePagesGetPageContent {
  my $text = OldPrivatePagesGetPageContent(@_);
  if (PrivatePageLocked($text)) {
    return NewPrivatePageNewText();
  }
  return $text;
}

# prevent reading of old revisions

*OldPrivatePagesGetTextRevision = \&GetTextRevision;
*GetTextRevision = \&NewPrivatePagesGetTextRevision;

sub NewPrivatePagesGetTextRevision {
  my ($page, $revision) = OldPrivatePagesGetTextRevision(@_);
  if (PrivatePageLocked($page->{text})) {
    return ({text => NewPrivatePageNewText()}, $revision); # XXX faking a page object like this is not good
  }
  return wantarray ? ($page, $revision) : $page;
}

# hide #PASSWORD

push(@MyRules, \&PrivatePageRule);

sub PrivatePageRule {
  if (pos == 0 && m/\G#PASSWORD.*\n/cg) {
    return '';
  }
  return;
}

# prevent leaking of edit summary

*OldPrivatePagesGetSummary = \&GetSummary;
*GetSummary = \&NewPrivatePagesGetSummary;

sub NewPrivatePagesGetSummary {
  my $text = GetParam('text', '');
  if ($text and $text =~ /^#PASSWORD\b/
      # no text means aftertext is set (leaving a comment)
      or $Page{text} =~ /^#PASSWORD\b/) {
    # if no summary was set, set something in order to avoid the default
    return '';
  }
  return OldPrivatePagesGetSummary();
}
