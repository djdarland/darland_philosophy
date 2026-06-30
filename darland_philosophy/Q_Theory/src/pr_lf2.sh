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
echo "Darland Practice .lf (body) Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Practice .lf (body) Files"
echo "-----------"
echo "1 darland0001.lf"
echo "2 darland0002.lf"
echo "3 darland0003.lf"
echo "4 darland0004.lf"
echo "5 darland0005.lf"
echo "6 darland0006.lf"
echo "-----------"
if test -f pr_lf2.sh
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "888 NOTES_HAK.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR ../Practice/lf/darland0001.lf;;
2) $EDITOR ../Practice/lf/darland0002.lf;;
3) $EDITOR ../Practice/lf/darland0003.lf;;
4) $EDITOR ../Practice/lf/darland0004.lf;;
5) $EDITOR ../Practice/lf/darland0005.lf;;
6) $EDITOR ../Practice/lf/darland0006.lf;;
666) $EDITOR pr_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;
888) $EDITOR NOTES_HAK.txt;;

esac
done

