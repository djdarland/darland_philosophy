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
echo "1 Test BASE/darland_2017_0001.bs (introductory remarks & echo some data)"
echo "2 Test BASE/darland_2017_0002.bs (understanding)"
echo "3 Test BASE/darland_2017_0003.bs (believing)"
echo "4 Test BASE/darland_2017_0004.bs (understanding about understanding)"
echo "5 Test BASE/darland_2017_0005.bs (beliefs about understanding and believing)"
echo "6 Test BASE/darland_2017_0006.bs (propositions)"
echo "7 Test BASE/darland_2017_0007.bs (truth)"
echo "8 Test BASE/darland_2017_0008.bs (opacity)"
echo "9 Test BASE/darland_2017_0009.bs (intensionality & extensionality)"
echo "10 Test BASE/darland_2017_0009.bs (philosophical quotes & terminology)"
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
1) echo "Testing 0001"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0001";;
2) echo "Testing 0002"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0002";;
3) echo "Testing 0003"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0003";;
4) echo "Testing 0004"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0004";;
5) echo "Testing 0005"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0005";;
6) echo "Testing 0006"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0006";;
7) echo "Testing 0007"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0007";;
8) echo "Testing 0008"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0008";;
9) echo "Testing 0009"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0009";;
10) echo "Testing 0010"; ruby gen_in.rb; cd ../*Life; ./work.sh "darland_2017_0010";;
666) $EDITOR da_par_lf.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

