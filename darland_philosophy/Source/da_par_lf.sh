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
echo "Darland Philosophy Individual Query Test Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Philosophy Input Files"
echo "-----------"
echo "0 Test append.lf (introductory remarks & echo some data)"
echo "1 Test darland_2017_0001.lf (introductory remarks & echo some data)"
echo "2 Test darland_2017_0002.lf (understanding)"
echo "3 Test darland_2017_0003.lf (believing)"
echo "4 Test darland_2017_0004.lf (understanding about understanding)"
echo "5 Test darland_2017_0005.lf (beliefs about understanding and believing)"
echo "6 Test darland_2017_0006.lf (propositions)"
echo "7 Test darland_2017_0007.lf (truth)"
echo "8 Test darland_2017_0008.lf (opacity)"
echo "9 Test darland_2017_0009.lf (intensionality & extensionality)"
echo "10 Test darland_2017_0010.lf (philosophical quotes & terminology)"
echo "-----------"
if test -f da_par_lf.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
0) echo "Testing append"; cd ../*Life; ./work.sh "append";;
1) echo "Testing 0001"; cd ../*Life; ./work.sh "darland_2017_0001";;
2) echo "Testing 0002"; cd ../*Life; ./work.sh "darland_2017_0002";;
3) echo "Testing 0003"; cd ../*Life; ./work.sh "darland_2017_0003";;
4) echo "Testing 0004"; cd ../*Life; ./work.sh "darland_2017_0004";;
5) echo "Testing 0005"; cd ../*Life; ./work.sh "darland_2017_0005";;
6) echo "Testing 0006"; cd ../*Life; ./work.sh "darland_2017_0006";;
7) echo "Testing 0007"; cd ../*Life; ./work.sh "darland_2017_0007";;
8) echo "Testing 0008"; cd ../*Life; ./work.sh "darland_2017_0008";;
9) echo "Testing 0009"; cd ../*Life; ./work.sh "darland_2017_0009";;
10) echo "Testing 0010"; cd ../*Life; ./work.sh "darland_2017_0010";;
666) $EDITOR da_par_lf.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

