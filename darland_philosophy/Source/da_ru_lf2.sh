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
echo "Darland Philosophy Rules Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Philosophy Rules Files"
echo "-----------"
echo "1 life_0001.lf   - Particular Rules for Life (misc)"
echo "2 life_0002.lf   - Particular Rules for Life (append)"
echo "3 rules_0001.lf - Rules on Understanding"
echo "4 rules_0002.lf - Rules on Atomic Belief"
echo "5 rules_0003.lf - Rules on Atomic Belief & Understanding"
echo "6 rules_0004.lf - Rules on Opacity of Atomic Belief"
echo "7 rules_0005.lf - Rules on Molecular Belief"
echo "8 rules_0006.lf - Rules on True Atomic Belief"
echo "9 rules_0007.lf - Rules for Multiple Tests"
echo "10 rules_0008.lf - Rules for Comparing Subjects"
echo "11 rules_0009.lf - Rules for Definite Descriptions"
echo "12 rules_0010.lf - Rules for Practice with Life - Apply"
echo "13 rules_0011.lf - Rules for Classes"
echo "21 rules_0021.lf - Rules for Understanding Using Definite Descriptions"
echo "22 rules_0022.lf - Rules on Atomic Belief Using Definite Descriptions"
echo "23 rules_0023.lf - Rules on True Atomic Belief Using Definite Descriptions"

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
1) $EDITOR ../DarlandPhilosophyLife/RULES2/life_0001.lf;;
2) $EDITOR ../DarlandPhilosophyLife/RULES2/life_0002.lf;;
3) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0001.lf;;
4) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0002.lf;;
5) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0003.lf;;
6) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0004.lf;;
7) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0005.lf;;
8) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0006.lf;;
9) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0007.lf;;
10) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0008.lf;;
11) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0009.lf;;
12) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0010.lf;;
13) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0011.lf;;
31) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0031.lf;;
32) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0032.lf;;
33) $EDITOR ../DarlandPhilosophyLife/RULES2/rules_0033.lf;;
666) $EDITOR da_ru_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

