##  Copyright (C) 2017, 2019, 2023 Dennis J. Darland

##  This file is part of darland's philosophy.

##  darland's philosophy is free software: you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation, either version 3 of the License, or
##  (at your option) any later version.

##  darland's philosophy is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.

##  You should have received a copy of the GNU General Public License
##  along with darland's philosophy.  If not, see <http://www.gnu.org/licenses/>.
echo "Darland Philosophy Rules Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Philosophy Rules Files"
echo "-----------"
echo "NOTE 31 forward are the current theory - still being worked on"
echo "1 life_0001.lf;;  - Utilities"
echo "31 rules_0031.lf - Rules for Understanding Using Number"
echo "32 rules_0032.lf - Rules on Atomic Belief Using Number"
echo "33 rules_0033.lf - Rules on Idealism, Private Language and Replacing Classes"
echo "34 rules_0034.lf - Rules for Opacity Using Number"
echo "35 rules_0035.lf - Rules for Multi Tests Using Number"
echo "36 rules_0036.lf - Rules on Agreement Using Number"
echo "37 rules_0037.lf - Rules for essentially singular terms"
echo "38 rules_0038.lf - Rules for plural terms"
echo "39 rules_0039.lf - Rules for contingently singular terms"
echo "40 rules_0040.lf - Rules for singular terms"
# echo "41 rules_0041.lf - Rules for Believes NAND"
# echo "42 rules_0042.lf - Rules for Believes True NAND"
# echo "43 rules_0043.lf - Rules for Disbelieves True NAND"
# echo "44 rules_0044.lf - Rules for Agnostic Belief NAND"
echo "45 rules_0045.lf - Rules for Same Sense"
echo "46 rules_0046.lf - Rules for Nonsense"
echo "47 rules_0047.lf - Rules for Believing Nonsense"
echo "48 rules_0048.lf - Rules for Natural meaning beliefs"
# echo "NOTE 61 forward are to Represent Facts rather Than Intensional Phenomena" 
# echo "61 rules_0061.lf - Rules for Atomic and Molecular and General Facts"
echo "71 rules_0071.lf - Whitehead Rules for Understanding Using Number"
echo "72 rules_0072.lf - Whitehead Rules for Belief Using Number"
echo "73 rules_0073.lf - Whitehead Rules for Checking Database of Facts"
echo "74 rules_0074.lf - Whitehead Rules for Opacity Using Number"
# echo "75 rules_0075.lf - Rules for essentially singular terms"
# echo "76 rules_0076.lf - Rules for plural terms"
# echo "77 rules_0077.lf - Rules for contingently singular terms"
# echo "78 rules_0078.lf - Rules for singular terms"
# echo "81 rules_0081.lf - Whitehead Rules Metaphysics"
echo "<cr> to continue"
read select2
echo "NOTE n = 131 forward are processed from n - 100 "
echo "131 rules_0031.lf - Rules for Understanding Using Number"
echo "132 rules_0032.lf - Rules on Atomic Belief Using Number"
echo "134 rules_0034.lf - Rules for Opacity Using Number"
echo "135 rules_0035.lf - Rules for Multi Tests Using Number"
echo "136 rules_0036.lf - Rules on Agreement Using Number"
echo "137 rules_0037.lf - Rules for essentially singular terms"
echo "138 rules_0038.lf - Rules for plural terms"
echo "139 rules_0039.lf - Rules for contingently singular terms"
echo "140 rules_0040.lf - Rules for singular terms"
# echo "141 rules_0041.lf - Rules for Believes NAND"
# echo "142 rules_0042.lf - Rules for Believes True NAND"
# echo "143 rules_0043.lf - Rules for Disbelieves True NAND"
# echo "144 rules_0044.lf - Rules for Agnostic Belief NAND"
echo "145 rules_0045.lf - Rules for Same Sense"
echo "146 rules_0046.lf - Rules for Nonsense"
echo "147 rules_0047.lf - Rules for Believing Nonsense"
echo "148 rules_0048.lf - Rules for Natural meaning beliefs"
# echo "NOTE 61 forward are to Represent Facts rather Than Intensional Phenomena" 
# echo "161 rules_0061.lf - Rules for Atomic and Molecular and General Facts"
echo "171 rules_0071.lf - Whitehead Rules for Understanding Using Number"
echo "172 rules_0072.lf - Whitehead Rules for Belief Using Number"
echo "173 rules_0073.lf - Whitehead Rules for Checking Database of Facts"
echo "174 rules_0074.lf - Whitehead Rules for Opacity Using Number"
# echo "175 rules_0075.lf - Rules for essentially singular terms"
# echo "176 rules_0076.lf - Rules for plural terms"
# echo "177 rules_0077.lf - Rules for contingently singular terms"
# echo "178 rules_0078.lf - Rules for singular terms"
# echo "181 rules_0081.lf - Whitehead Rules Metaphysics"
echo "-----------"
if test -f da_ru_lf2.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR ../RULES2/life_0001.lf;;
2) $EDITOR ../RULES2/life_0002.lf;;
3) $EDITOR ../RULES2/rules_0001.lf;;
4) $EDITOR ../RULES2/rules_0002.lf;;
5) $EDITOR ../RULES2/rules_0003.lf;;
6) $EDITOR ../RULES2/rules_0004.lf;;
7) $EDITOR ../RULES2/rules_0005.lf;;
8) $EDITOR ../RULES2/rules_0006.lf;;
9) $EDITOR ../RULES2/rules_0007.lf;;
10) $EDITOR ../RULES2/rules_0008.lf;;
11) $EDITOR ../RULES2/rules_0009.lf;;
12) $EDITOR ../RULES2/rules_0010.lf;;
13) $EDITOR ../RULES2/rules_0011.lf;;
31) $EDITOR ../RULES2/rules_0031.lf;;
32) $EDITOR ../RULES2/rules_0032.lf;;
33) $EDITOR ../RULES2/rules_0033.lf;;
34) $EDITOR ../RULES2/rules_0034.lf;;
35) $EDITOR ../RULES2/rules_0035.lf;;
36) $EDITOR ../RULES2/rules_0036.lf;;
37) $EDITOR ../RULES2/rules_0037.lf;;
38) $EDITOR ../RULES2/rules_0038.lf;;
39) $EDITOR ../RULES2/rules_0039.lf;;
40) $EDITOR ../RULES2/rules_0040.lf;;
41) $EDITOR ../RULES2/rules_0041.lf;;
42) $EDITOR ../RULES2/rules_0042.lf;;
43) $EDITOR ../RULES2/rules_0043.lf;;
44) $EDITOR ../RULES2/rules_0044.lf;;
45) $EDITOR ../RULES2/rules_0045.lf;;
46) $EDITOR ../RULES2/rules_0046.lf;;
47) $EDITOR ../RULES2/rules_0047.lf;;
48) $EDITOR ../RULES2/rules_0048.lf;;
61) $EDITOR ../RULES2/rules_0061.lf;;
62) $EDITOR ../RULES2/rules_0062.lf;;
63) $EDITOR ../RULES2/rules_0063.lf;;
64) $EDITOR ../RULES2/rules_0064.lf;;
65) $EDITOR ../RULES2/rules_0065.lf;;
68) $EDITOR ../RULES2/rules_0068.lf;;
71) $EDITOR ../RULES2/rules_0071.lf;;
72) $EDITOR ../RULES2/rules_0072.lf;;
73) $EDITOR ../RULES2/rules_0073.lf;;
74) $EDITOR ../RULES2/rules_0074.lf;;
75) $EDITOR ../RULES2/rules_0075.lf;;
76) $EDITOR ../RULES2/rules_0076.lf;;
77) $EDITOR ../RULES2/rules_0077.lf;;
78) $EDITOR ../RULES2/rules_0078.lf;;
81) $EDITOR ../RULES2/rules_0081.lf;;
666) $EDITOR da_ru_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

