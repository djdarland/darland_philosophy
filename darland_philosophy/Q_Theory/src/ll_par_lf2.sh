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
echo "Russell Philosophy Input Files"
echo "-----------"
echo "101 Test russell_0101.lf Basic Principles Era Queries" 
echo "201 Test russell_0201.lf Basic Principia Era Queries" 
echo "301 Test russell_0301.lf Basic Neutral Era Queries" 
echo "401 Test russell_0401.lf Basic ax reduc Queries" 
echo "-----------"
if test -f ll_par_lf2.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in

101) echo "Testing 0101"; cd ../RussellPhilosophyLife; ./work2.sh "russell_0101";;
201) echo "Testing 0201"; cd ../RussellPhilosophyLife; ./work2.sh "russell_0201";;
301) echo "Testing 0301"; cd ../RussellPhilosophyLife; ./work2.sh "russell_0301";;
401) echo "Testing 0401"; cd ../RussellPhilosophyLife; ./work2.sh "russell_0401";;
666) $EDITOR ll_par_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

