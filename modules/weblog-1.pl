# Copyright (C) 2004, 2005  Alex Schroeder <alex@emacswiki.org>
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

use strict;
use v5.10;

our (@MyInitVariables, $UserGotoBar, @UserGotoBarPages, $CommentsPrefix, $EditAllowed);
our ($WeblogTextLogo, $WeblogXmlLogo);

$WeblogXmlLogo = '/images/rss.png';
$WeblogTextLogo = '/images/txt.png';

AddModuleDescription('weblog-1.pl', 'Minimal Weblog Extension');

$CommentsPrefix = 'Comments_on_'; # TODO huh? But that's the default value, right?
$EditAllowed = 2;

push(@MyInitVariables, \&WebLog1Init);

sub WebLog1Init {
  if (GetParam('blog', 1)) {	# language independent!
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday) = localtime(time);
    my $today = sprintf("%d-%02d-%02d", $year + 1900, $mon + 1, $mday);
    ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday) = localtime(time - 60*60*24);
    my $yesterday = sprintf("%d-%02d-%02d", $year + 1900, $mon + 1, $mday);
    # this modification is not mod_perl safe!
    my $blog = T('Blog');
    push(@UserGotoBarPages, $blog) unless grep (/^$blog$/, @UserGotoBarPages);
    push(@UserGotoBarPages, $today) unless grep (/^$today$/, @UserGotoBarPages);
    push(@UserGotoBarPages, $yesterday) unless grep (/^$yesterday$/, @UserGotoBarPages);
    $UserGotoBar .=
      ScriptLink('action=rss',
		 "<img src=\"$WeblogXmlLogo\" alt=\"XML\" class=\"XML\" />")
	. ' '. ScriptLink('action=rc;raw=1',
			  "<img src=\"$WeblogTextLogo\" alt=\"TXT\" class=\"XML\" />");
  }
}
