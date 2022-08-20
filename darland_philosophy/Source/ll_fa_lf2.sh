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
echo "Landini interpretation of Russell Philosophy Facts Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Landini - Russell Philosophy Facts Files"
echo "-----------"

echo "101 facts_0101.lf Principles era"
echo "201 facts_0201.lf Principia era"
echo "301 facts_0301.lf Neutral Monism era"
echo "401 facts_0401.lf Axiom Reduc my iterp of 1st ed intro"

echo "-----------"
if test -f ll_fa_lf2.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
101) $EDITOR ../RussellPhilosophyLife/FACTS2pre/principles_0101.lf;;
201) $EDITOR ../RussellPhilosophyLife/FACTS2pre/principia_0201.lf;;
301) $EDITOR ../RussellPhilosophyLife/FACTS2pre/neutral_0301.lf;;
401) $EDITOR ../RussellPhilosophyLife/FACTS2pre/reduc_0401.lf;;
666) $EDITOR ll_fa_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;
esac
done

