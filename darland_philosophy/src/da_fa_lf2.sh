##  Copyright (C) 2017, 2019 Dennis J. Darland

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
echo "Darland Philosophy Facts Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Philosophy Facts Files"
echo "-----------"

echo "31 facts_0031.wlr data for Everything with Number added for Ideas"
echo "33 facts_0033.wlr data Idealism, Private Language, and Replacing Classes"
echo "71 facts_0071.wlr data for Whitehead phil"
echo "81 facts_0081.wlr data for Whitehead Metaphysics"
echo "for n > 100 preprocessed m = n + 100"
echo "131 facts_0031.lf data for Everything with Number added for Ideas"
echo "133 facts_0133.lf data Idealism, Private Language, and Replacing Classes"
echo "171 facts_0071.lf data for Whitehead phil"
echo "181 facts_0081.lf data for Whitehead Metaphysics"

echo "-----------"
if test -f da_fa_lf2.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
0) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0000.wlr;;
1) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0001.wlr;;
2) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0002.wlr;;
3) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0003.wlr;;
4) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0004.wlr;;
5) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0005.wlr;;
6) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0006.wlr;;
31) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0031.wlr;;
33) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0033.wlr;;
71) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0071.wlr;;
81) $EDITOR ../DarlandPhilosophyWilder/FACTS3/facts_0081.wlr;;
100) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0000.lf;;
101) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0001.lf;;
102) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0002.lf;;
103) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0003.lf;;
104) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0004.lf;;
105) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0005.lf;;
106) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0006.lf;;
131) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0031.lf;;
133) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0033.lf;;
171) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0071.lf;;
181) $EDITOR ../DarlandPhilosophyWilder/FACTS2/facts_0081.lf;;
666) $EDITOR da_fa_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

