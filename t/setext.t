# Copyright (C) 2006  Alex Schroeder <alex@emacswiki.org>
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

require 't/test.pl';
package OddMuse;
use Test::More tests => 12;

do 'modules/setext.pl';
do 'modules/link-all.pl';

run_tests(split('\n',<<'EOT'));
foo
foo
~foo~
<i>foo</i>
da *foo*
da *foo*
da **foo** bar
da <b>foo</b> bar
da `_**foo**_` bar
da **foo** bar
_foo_
<em style="text-decoration: underline; font-style: normal;">foo</em>
foo_bar_baz
foo_bar_baz
_foo_bar_ baz
<em style="text-decoration: underline; font-style: normal;">foo bar</em> baz
and\nfoo\n===\n\nmore\n
and <h2>foo</h2><p>more</p>
and\n\nfoo\n===\n\nmore\n
and<h2>foo</h2><p>more</p>
and\nfoo  \n--- \n\nmore\n
and <h3>foo</h3><p>more</p>
and\nfoo\n---\n\nmore\n
and <h3>foo</h3><p>more</p>
EOT
