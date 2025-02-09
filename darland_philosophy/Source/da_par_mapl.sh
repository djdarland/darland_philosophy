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
echo "Darland Philosophy Individual Query Test Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Philosophy Input Files"
echo "-----------"
echo "1 Test darland_0001.mxt Some gravity"
echo "2 Test darland_0002.mxt Some gravity + electromagnetism"
echo "-----------"
if test -f da_par_mapl.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) echo "Testing 0001"; cd ../*Maple; ./work2.sh "darland_0001";;
2) echo "Testing 0002"; cd ../*Maple; ./work2.sh "darland_0002";;
666) $EDITOR da_par_mapl.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

