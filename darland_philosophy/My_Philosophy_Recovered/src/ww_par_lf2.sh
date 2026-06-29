##  Copyright (C) 2017, 2021, 2022 Dennis J. Darland

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
echo "Whitehead Philosophy Input Files"
echo "-----------"
echo "101 Test whitehead_0101.lf One" 
echo "201 Test whitehead_0201.lf Two" 
echo "301 Test whitehead_0301.lf Three" 
echo "401 Test whitehead_0401.lf Four" 
echo "901 Test whitehead_0401.lf Game of Life in WildLIFE" 
echo "-----------"
if test -f ww_par_lf2.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in

101) echo "Testing 0101"; cd ../WhiteheadPhilosophyLife; ./work2.sh "whitehead_0101";;
201) echo "Testing 0201"; cd ../WhiteheadPhilosophyLife; ./work2.sh "whitehead_0201";;
301) echo "Testing 0301"; cd ../WhiteheadPhilosophyLife; ./work2.sh "whitehead_0301";;
401) echo "Testing 0401"; cd ../WhiteheadPhilosophyLife; ./work2.sh "whitehead_0401";;
901) echo "Testing 0401"; cd ../WhiteheadPhilosophyLife; ./work2.sh "whitehead_0901";;
666) $EDITOR ww_par_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

