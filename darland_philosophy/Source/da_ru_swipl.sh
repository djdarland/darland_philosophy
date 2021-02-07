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
echo "1 life_0001.pl   - Particular Rules for Swipl (misc)"
echo "2 life_0002.pl   - Particular Rules for Swipl (append)"
echo "3 rules_0001.pl - Rules on Understanding"
echo "4 rules_0002.pl - Rules on Atomic Belief"
echo "5 rules_0003.pl - Rules on Atomic Belief & Understanding"
echo "6 rules_0004.pl - Rules on Opacity of Atomic Belief"
echo "7 rules_0005.pl - Rules on Molecular Belief"
echo "8 rules_0006.pl - Rules on True Atomic Belief"
echo "9 rules_0007.pl - Rules for Tests - Understanding, Belief, ..."
echo "10 rules_0008.pl - Rules for agreement vs disagreement"

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
1) $EDITOR ../DarlandPhilosophySwipl/RULES2/life_0001.pl;;
2) $EDITOR ../DarlandPhilosophySwipl/RULES2/life_0002.pl;;
3) $EDITOR ../DarlandPhilosophySwipl/RULES2/rules_0001.pl;;
4) $EDITOR ../DarlandPhilosophySwipl/RULES2/rules_0002.pl;;
5) $EDITOR ../DarlandPhilosophySwipl/RULES2/rules_0003.pl;;
6) $EDITOR ../DarlandPhilosophySwipl/RULES2/rules_0004.pl;;
7) $EDITOR ../DarlandPhilosophySwipl/RULES2/rules_0005.pl;;
8) $EDITOR ../DarlandPhilosophySwipl/RULES2/rules_0006.pl;;
9) $EDITOR ../DarlandPhilosophySwipl/RULES2/rules_0007.pl;;
10) $EDITOR ../DarlandPhilosophySwipl/RULES2/rules_0008.pl;;
666) $EDITOR da_ru_swipl.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

