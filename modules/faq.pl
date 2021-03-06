# Copyright (C) 2004  Alex Schroeder <alex@emacswiki.org>
#                     Niklas Volbers <mithrandir42@web.de>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# This module creates a list of all questions on the page, e.g.
# for a faq. It does so by recognizing all lines that begin with
# a Q: as a question.
# Additionally, lines starting with Q: and A: are rendered using
# the css classes div.question and div.answer.

use strict;
use v5.10;

AddModuleDescription('faq.pl', 'FAQ Extension');

our ($q, $bol, @MyRules);
our ($FaqHeaderText, $FaqQuestionText, $FaqAnswerText);

$FaqHeaderText = "Questions on this page:" unless $FaqHeaderText;
$FaqQuestionText = "Question: " unless $FaqQuestionText;
$FaqAnswerText = "Answer: " unless $FaqAnswerText;

push(@MyRules, \&FaqRule);

sub FaqRule {
  if ($bol && m/\GQ: (.+)/cg) {
    return $q->a({name=>'FAQ_' . UrlEncode($1)},'')
      . $q->div({class=>'question'}, $FaqQuestionText . $1);
  } elsif ($bol && m/\GA:[ \t]*/cg) {
    return CloseHtmlEnvironments()
      . AddHtmlEnvironment('div', "class='answer'") . $FaqAnswerText;
  }
  return;
}

*OldFaqGetHeader = \&GetHeader;
*GetHeader = \&NewFaqGetHeader;

sub NewFaqGetHeader {
  my ($id) = @_;
  my $result = OldFaqGetHeader(@_);
  # append FAQ to header
  $result .= FaqHeadings($id) if $id;
  return $result;
}

sub FaqHeadings {
  my $page = GetPageContent(shift);
  # ignore all the stuff that gets processed anyway by usemod.pl and
  # creole.pl -- if we're not going to hook into ordinary parsing like
  # toc.pl does, this will always be incomplete.
  $page =~ s/<nowiki>(.*\n)*<\/nowiki>//gi;
  $page =~ s/<pre>(.*\n)*<\/pre>//gi;
  $page =~ s/<code>(.*\n)*<\/code>//gi;
  $page =~ s/\{\{\{[ \t]*\n(.*?)\n\}\}\}[ \t]*(\n|$)//gs;

  my $Headings = '';
  foreach my $line (grep(/^Q:[ \t]*(.*?)$/, split(/\n/, $page))) {
    next unless $line =~ /^Q:[ \t]*(.*?)$/;
    next unless $1;
    my $link = 'FAQ_' . UrlEncode($1);
    $Headings .= $q->li($q->a({href=>'#' . $link}, $1));
  }
  return $q->div({class=>'faq'}, $FaqHeaderText . $q->ol($Headings)) if $Headings;
}
