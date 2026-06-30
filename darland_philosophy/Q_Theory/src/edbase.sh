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
echo "Darland Philosophy Base Query Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Philosophy Input Files"
echo "-----------"
echo "1 BASE/darland_2017_0001.bs (introductory remarks & echo some data)"
echo "2 BASE/darland_2017_0002.bs (understanding)"
echo "3 BASE/darland_2017_0003.bs (believing)"
echo "4 BASE/darland_2017_0004.bs (understanding about understanding)"
echo "5 BASE/darland_2017_0005.bs (beliefs about understanding and believing)"
echo "6 BASE/darland_2017_0006.bs (propositions)"
echo "7 BASE/darland_2017_0007.bs (truth)"
echo "8 BASE/darland_2017_0008.bs (opacity)"
echo "9 BASE/darland_2017_0009.bs (intensionality & extensionality)"
echo "10 BASE/darland_2017_0010.bs (philosophical terminology)"
echo "-----------"
if test -f edbase.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR BASE/darland_2017_0001.bs;;
2) $EDITOR BASE/darland_2017_0002.bs;;
3) $EDITOR BASE/darland_2017_0003.bs;;
4) $EDITOR BASE/darland_2017_0004.bs;;
5) $EDITOR BASE/darland_2017_0005.bs;;
6) $EDITOR BASE/darland_2017_0006.bs;;
7) $EDITOR BASE/darland_2017_0007.bs;;
8) $EDITOR BASE/darland_2017_0008.bs;;
9) $EDITOR BASE/darland_2017_0009.bs;;
10) $EDITOR BASE/darland_2017_0010.bs;;

666) $EDITOR edbase.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

