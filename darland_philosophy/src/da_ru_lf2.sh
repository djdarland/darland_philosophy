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
echo "1 life_0001.wlr;;  - Utilities"
echo "31 rules_0031.wlr - Rules for Understanding Using Number"
echo "32 rules_0032.wlr - Rules on Atomic Belief Using Number"
echo "33 rules_0033.wlr - Rules on Idealism, Private Language and Replacing Classes"
echo "34 rules_0034.wlr - Rules for Opacity Using Number"
echo "35 rules_0035.wlr - Rules for Multi Tests Using Number"
echo "36 rules_0036.wlr - Rules on Agreement Using Number"
echo "37 rules_0037.wlr - Rules for essentially singular terms"
echo "38 rules_0038.wlr - Rules for plural terms"
echo "39 rules_0039.wlr - Rules for contingently singular terms"
echo "40 rules_0040.wlr - Rules for singular terms"
echo "41 rules_0041.wlr - Rules for Believes NAND"
echo "42 rules_0042.wlr - Rules for Believes True NAND"
echo "43 rules_0043.wlr - Rules for Disbelieves True NAND"
echo "44 rules_0044.wlr - Rules for Agnostic Belief NAND"
echo "45 rules_0045.wlr - Rules for Same Sense"
echo "46 rules_0046.wlr - Rules for Nonsense"
echo "47 rules_0047.wlr - Rules for Believing Nonsense"
echo "48 rules_0048.wlr - Rules for Natural meaning beliefs"
echo "NOTE 61 forward are to Represent Facts rather Than Intensional Phenomena" 
echo "61 rules_0061.wlr - Rules for Atomic and Molecular and General Facts"
echo "71 rules_0071.wlr - Whitehead Rules for Understanding Using Number"
echo "72 rules_0072.wlr - Whitehead Rules for Belief Using Number"
echo "73 rules_0073.wlr - Whitehead Rules for Checking Database of Facts"
echo "74 rules_0074.wlr - Whitehead Rules for Opacity Using Number"
echo "75 rules_0075.wlr - Rules for essentially singular terms"
echo "76 rules_0076.wlr - Rules for plural terms"
echo "77 rules_0077.wlr - Rules for contingently singular terms"
echo "78 rules_0078.wlr - Rules for singular terms"
echo "81 rules_0081.wlr - Whitehead Rules Metaphysics"
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
echo "141 rules_0041.lf - Rules for Believes NAND"
echo "142 rules_0042.lf - Rules for Believes True NAND"
echo "143 rules_0043.lf - Rules for Disbelieves True NAND"
echo "144 rules_0044.lf - Rules for Agnostic Belief NAND"
echo "145 rules_0045.lf - Rules for Same Sense"
echo "146 rules_0046.lf - Rules for Nonsense"
echo "147 rules_0047.lf - Rules for Believing Nonsense"
echo "148 rules_0048.lf - Rules for Natural meaning beliefs"
echo "NOTE 61 forward are to Represent Facts rather Than Intensional Phenomena" 
echo "161 rules_0061.lf - Rules for Atomic and Molecular and General Facts"
echo "171 rules_0071.lf - Whitehead Rules for Understanding Using Number"
echo "172 rules_0072.lf - Whitehead Rules for Belief Using Number"
echo "173 rules_0073.lf - Whitehead Rules for Checking Database of Facts"
echo "174 rules_0074.lf - Whitehead Rules for Opacity Using Number"
echo "175 rules_0075.lf - Rules for essentially singular terms"
echo "176 rules_0076.lf - Rules for plural terms"
echo "177 rules_0077.lf - Rules for contingently singular terms"
echo "178 rules_0078.lf - Rules for singular terms"
echo "181 rules_0081.lf - Whitehead Rules Metaphysics"
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
1) $EDITOR ../DarlandPhilosophyWilder/RULES3/life_0001.wlr;;
2) $EDITOR ../DarlandPhilosophyWilder/RULES3/life_0002.wlr;;
3) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0001.wlr;;
4) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0002.wlr;;
5) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0003.wlr;;
6) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0004.wlr;;
7) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0005.wlr;;
8) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0006.wlr;;
9) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0007.wlr;;
10) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0008.wlr;;
11) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0009.wlr;;
12) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0010.wlr;;
13) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0011.wlr;;
31) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0031.wlr;;
32) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0032.wlr;;
33) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0033.wlr;;
34) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0034.wlr;;
35) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0035.wlr;;
36) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0036.wlr;;
37) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0037.wlr;;
38) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0038.wlr;;
39) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0039.wlr;;
40) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0040.wlr;;
41) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0041.wlr;;
42) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0042.wlr;;
43) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0043.wlr;;
44) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0044.wlr;;
45) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0045.wlr;;
46) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0046.wlr;;
47) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0047.wlr;;
48) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0048.wlr;;
61) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0061.wlr;;
62) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0062.wlr;;
63) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0063.wlr;;
64) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0064.wlr;;
65) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0065.wlr;;
68) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0068.wlr;;
71) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0071.wlr;;
72) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0072.wlr;;
73) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0073.wlr;;
74) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0074.wlr;;
75) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0075.wlr;;
76) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0076.wlr;;
77) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0077.wlr;;
78) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0078.wlr;;
81) $EDITOR ../DarlandPhilosophyWilder/RULES3/rules_0081.wlr;;
101) $EDITOR ../DarlandPhilosophyWilder/RULES2/life_0001.lf;;
102) $EDITOR ../DarlandPhilosophyWilder/RULES2/life_0002.lf;;
103) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0001.lf;;
104) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0002.lf;;
105) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0003.lf;;
106) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0004.lf;;
107) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0005.lf;;
108) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0006.lf;;
109) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0007.lf;;
110) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0008.lf;;
111) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0009.lf;;
112) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0010.lf;;
113) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0011.lf;;
131) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0031.lf;;
132) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0032.lf;;
133) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0033.lf;;
134) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0034.lf;;
135) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0035.lf;;
136) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0036.lf;;
137) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0037.lf;;
138) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0038.lf;;
139) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0039.lf;;
140) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0040.lf;;
141) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0041.lf;;
142) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0042.lf;;
143) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0043.lf;;
144) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0044.lf;;
145) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0045.lf;;
146) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0046.lf;;
147) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0047.lf;;
148) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0048.lf;;
161) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0061.lf;;
162) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0062.lf;;
163) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0063.lf;;
164) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0064.lf;;
165) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0065.lf;;
168) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0068.lf;;
171) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0071.lf;;
172) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0072.lf;;
173) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0073.lf;;
174) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0074.lf;;
175) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0075.lf;;
176) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0076.lf;;
177) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0077.lf;;
178) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0078.lf;;
181) $EDITOR ../DarlandPhilosophyWilder/RULES2/rules_0081.lf;;
666) $EDITOR da_ru_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

