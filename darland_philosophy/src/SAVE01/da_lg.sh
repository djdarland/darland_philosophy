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
echo "1 darland0001_2007_0001.log"
echo "2 darland0001_2007_0002.log"
echo "3 darland0001_2007_0003.log"
echo "4 darland0001_2007_0004.log"
echo "5 darland0001_2007_0005.log"
echo "6 darland0001_2007_0006.log"
echo "7 darland0001_2007_0007.log"
echo "8 darland0001_2007_0008.log"
echo "9 darland0001_2007_0009.log"
echo "-----------"
echo "666 This File"
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR ../DarlandPhilosophySwi/log/darland_2007_0001.log;;
2) $EDITOR ../DarlandPhilosophySwi/log/darland_2007_0002.log;;
3) $EDITOR ../DarlandPhilosophySwi/log/darland_2007_0003.log;;
4) $EDITOR ../DarlandPhilosophySwi/log/darland_2007_0004.log;;
5) $EDITOR ../DarlandPhilosophySwi/log/darland_2007_0005.log;;
6) $EDITOR ../DarlandPhilosophySwi/log/darland_2007_0006.log;;
7) $EDITOR ../DarlandPhilosophySwi/log/darland_2007_0007.log;;
8) $EDITOR ../DarlandPhilosophySwi/log/darland_2007_0008.log;;
9) $EDITOR ../DarlandPhilosophySwi/log/darland_2007_0009.log;;
666) $EDITOR da_lg.sh;;
777) $EDITOR NOTES_DJD.txt;;
esac
done

