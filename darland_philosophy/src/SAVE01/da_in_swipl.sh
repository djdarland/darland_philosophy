##  Copyright (C) 2017, 2021 Dennis J. Darland

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
echo "Darland Philosophy Input Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Philosophy Input Files"
echo "There is NO USE EDITING thse files - they are GENERATED."
echo "However you may wish to LOOK at THEM"
echo "-----------"
echo "1 darland_0001.pl"
echo "2 darland_0002.pl"
echo "3 darland_0003.pl"
echo "4 darland_0004.pl"
echo "5 darland_0005.pl"
echo "6 darland_0006.pl"
echo "7 darland_0007.pl"
echo "8 darland_0008.pl"
echo "9 darland_0009.pl"
echo "-----------"
if test -f da_in_lf2.sh
   echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR ../DarlandPhilosophyLife/IN/darland_0001.pl;;
2) $EDITOR ../DarlandPhilosophyLife/IN/darland_0002.pl;;
3) $EDITOR ../DarlandPhilosophyLife/IN/darland_0003.pl;;
4) $EDITOR ../DarlandPhilosophyLife/IN/darland_0004.pl;;
5) $EDITOR ../DarlandPhilosophyLife/IN/darland_0005.pl;;
6) $EDITOR ../DarlandPhilosophyLife/IN/darland_0006.pl;;
7) $EDITOR ../DarlandPhilosophyLife/IN/darland_0007.pl;;
8) $EDITOR ../DarlandPhilosophyLife/IN/darland_0008.pl;;
9) $EDITOR ../DarlandPhilosophyLife/IN/darland_0009.pl;;
666) $EDITOR da_in_swipl.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

