##  Copyright (C) 2017, 2019, 2022 Dennis J. Darland

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
echo "Whitehead Philosophy Rules Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Whitehead Philosophy Rules Files"
echo "-----------"
echo "1 life_0001.lf - Life Rules"
echo "101 whitehead_rules_0101.lf - Basic Metaphysics"
echo "201 whitehead_rules_0201.lf - Basic Two Rules"
echo "301 whitehead_rules_0301.lf - Basic Three Rules"
echo "401 whitehead_rules_0401.lf - Basic Four Rules"
echo "901 whitehead_rules_0901.lf - Experiment with Game of Life in WildLIFE"

echo "-----------"
if test -f ww_ru_lf2.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR ../WhiteheadPhilosophyLife/RULES2/life_0001.lf;;
101) $EDITOR ../WhiteheadPhilosophyLife/RULES2/w_rules_0101.lf;;
201) $EDITOR ../WhiteheadPhilosophyLife/RULES2/w_rules_0201.lf;;
301) $EDITOR ../WhiteheadPhilosophyLife/RULES2/w_rules_0301.lf;;
401) $EDITOR ../WhiteheadPhilosophyLife/RULES2/w_rules_0401.lf;;
901) $EDITOR ../WhiteheadPhilosophyLife/RULES2/w_rules_0901.lf;;
666) $EDITOR ww_ru_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

