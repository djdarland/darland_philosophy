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

echo "31 facts_0031.lf data for Everything with Number added for Ideas"
echo "71 facts_0071.lf data for Whitehead phil"
echo "81 facts_0081.lf data for Whitehead Metaphysics"

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
0) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0000.lf;;
1) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0001.lf;;
2) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0002.lf;;
3) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0003.lf;;
4) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0004.lf;;
5) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0005.lf;;
6) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0006.lf;;
31) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0031.lf;;
71) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0071.lf;;
81) $EDITOR ../DarlandPhilosophyLife/FACTS2pre/facts_0081.lf;;
666) $EDITOR da_fa_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

