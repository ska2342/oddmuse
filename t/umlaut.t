# Copyright (C) 2016  Alex Schroeder <alex@gnu.org>
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

require 't/test.pl';
package OddMuse;
use Test::More tests => 3;
use utf8;

my $dir = $ENV{WikiDataDir};
$dir .= "-ä";
utf8::encode($dir); # bytes
$ENV{WikiDataDir} = $dir;

# editing pages
test_page(get_page('Test'),
	  '<title>Wiki: Test</title>',
	  'Status: 404 NOT FOUND');
test_page(update_page('Test', 'Muuu!', 'first edit', undef, undef,
		      'username=Alex'),
	  '<p>Muuu!</p>');