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
echo "Darland Practice Input Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Practice Input Files"
echo "-----------"
echo "1 darland0001.in"
echo "2 darland0002.in"
echo "3 darland0003.in"
echo "4 darland0004.in"
echo "5 darland0005.in"
echo "6 darland0006.in"
echo "-----------"
echo "666 This File"
echo "777 NOTES_DJD.txt"
echo "888 NOTES_HAK.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR ../Practice/in/darland0001.in;;
2) $EDITOR ../Practice/in/darland0002.in;;
3) $EDITOR ../Practice/in/darland0003.in;;
4) $EDITOR ../Practice/in/darland0004.in;;
5) $EDITOR ../Practice/in/darland0005.in;;
6) $EDITOR ../Practice/in/darland0006.in;;
666) $EDITOR da_in.sh;;
777) $EDITOR NOTES_DJD.txt;;
888) $EDITOR NOTES_HAK.txt;;

esac
done

