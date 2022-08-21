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
echo "0 append.out"
echo "1 whitehead0101.out"
echo "2 whitehead0201.out"
echo "3 whitehead0301.out"
echo "4 whitehead0401.out"
echo "9 whitehead0901.out"
echo "-----------"
if test -f ww_lg_lf2.sh
   then
   echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
0) $EDITOR ../WhiteheadPhilosophyLife/OUT2/append.out;;
1) $EDITOR ../WhiteheadPhilosophyLife/OUT2/whitehead0101.out;;
2) $EDITOR ../WhiteheadPhilosophyLife/OUT2/whitehead0201.out;;
3) $EDITOR ../WhiteheadPhilosophyLife/OUT2/whitehead0301.out;;
4) $EDITOR ../WhiteheadPhilosophyLife/OUT2/whitehead0401.out;;
9) $EDITOR ../WhiteheadPhilosophyLife/OUT2/whitehead_0901.out;;
666) $EDITOR ww_lg_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

