##  Copyright (C) 2017 Dennis J. Darland

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
echo "Darland Philosophy .log Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Philosophy .log Files"
echo "-----------"
echo "1 darland0001_2017_0001.out"
echo "2 darland0001_2017_0002.out"
echo "3 darland0001_2017_0003.out"
echo "4 darland0001_2017_0004.out"
echo "5 darland0001_2017_0005.out"
echo "6 darland0001_2017_0006.out"
echo "7 darland0001_2017_0007.out"
echo "8 darland0001_2017_0008.out"
echo "9 darland0001_2017_0009.out"
echo "10 darland0001_2017_0010.out"
echo "-----------"
echo "666 This File"
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0001.out;;
2) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0002.out;;
3) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0003.out;;
4) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0004.out;;
5) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0005.out;;
6) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0006.out;;
7) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0007.out;;
8) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0008.out;;
9) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0009.out;;
10) $EDITOR ../DarlandPhilosophyLife/OUT/darland_2017_0010.out;;
666) $EDITOR da_lg_lf.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

