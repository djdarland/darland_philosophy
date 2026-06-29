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
echo "Darland Practice Facts Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Practice Facts Files"
echo "-----------"
echo "1 facts0001.pl"
echo "4 facts0004.pl"
echo "5 facts0005.pl"
echo "6 facts0006.pl"
echo "-----------"
echo "666 This File"
echo "777 NOTES_DJD.txt"
echo "888 NOTES_HAK.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR ../Practice/facts/facts0001.pl;;
4) $EDITOR ../Practice/facts/facts0004.pl;;
5) $EDITOR ../Practice/facts/facts0005.pl;;
6) $EDITOR ../Practice/facts/facts0006.pl;;
666) $EDITOR da_fa.sh;;
777) $EDITOR NOTES_DJD.txt;;
888) $EDITOR NOTES_HAK.txt;;

esac
done

