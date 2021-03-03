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
echo "NOTE: 31 forward are the current theory - still under development"
echo "31 Test darland_0031.lf Some examples understanding & number"
echo "32 Test darland_0032.lf Some examples belief & number"
echo "33 Test darland_0033.lf Some examples true belief & number"
echo "34 Test darland_0034.lf Some examples opacity, agnosticism & number"
echo "35 Test darland_0035.lf Some examples multi test & number"
echo "36 Test darland_0036.lf Some examples agreement & number"
echo "37 Test darland_0037.lf Some examples essentially singular terms"
echo "38 Test darland_0038.lf Some examples plural terms"
echo "39 Test darland_0039.lf Some examples contingently singular terms"
echo "40 Test darland_0040.lf Some examples singular terms"
echo "41 Test darland_0041.lf Some examples for NAND Belief"
echo "42 Test darland_0042.lf Some examples for TRUE NAND Belief"
echo "61 Test darland_0061.lf Some examples PM Truth Functions"
echo "62 Test darland_0062.lf Some examples Satisfiability"
echo "63 Test darland_0063.lf Some examples Satisfiability with Statistics"
echo "64 Test darland_0064.lf Some examples Modified Satisfiability"
echo "-----------"
if test -f da_par_lf2.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
0) echo "Testing append"; cd ../*Life; ./work2.sh "append";;
1) echo "Testing 0001"; cd ../*Life; ./work2.sh "darland_0001";;
2) echo "Testing 0002"; cd ../*Life; ./work2.sh "darland_0002";;
3) echo "Testing 0003"; cd ../*Life; ./work2.sh "darland_0003";;
4) echo "Testing 0004"; cd ../*Life; ./work2.sh "darland_0004";;
5) echo "Testing 0005"; cd ../*Life; ./work2.sh "darland_0005";;
6) echo "Testing 0006"; cd ../*Life; ./work2.sh "darland_0006";;
7) echo "Testing 0007"; cd ../*Life; ./work2.sh "darland_0007";;
8) echo "Testing 0008"; cd ../*Life; ./work2.sh "darland_0008";;
9) echo "Testing 0009"; cd ../*Life; ./work2.sh "darland_0009";;
10) echo "Testing 0010"; cd ../*Life; ./work2.sh "darland_0010";;
21) echo "Testing 0021"; cd ../*Life; ./work2.sh "darland_0021";;
22) echo "Testing 0022"; cd ../*Life; ./work2.sh "darland_0022";;
23) echo "Testing 0023"; cd ../*Life; ./work2.sh "darland_0023";;
24) echo "Testing 0024"; cd ../*Life; ./work2.sh "darland_0024";;
25) echo "Testing 0025"; cd ../*Life; ./work2.sh "darland_0025";;
26) echo "Testing 0026"; cd ../*Life; ./work2.sh "darland_0026";;
27) echo "Testing 0027"; cd ../*Life; ./work2.sh "darland_0027";;
28) echo "Testing 0028"; cd ../*Life; ./work2.sh "darland_0028";;
31) echo "Testing 0031"; cd ../*Life; ./work2.sh "darland_0031";;
32) echo "Testing 0032"; cd ../*Life; ./work2.sh "darland_0032";;
33) echo "Testing 0033"; cd ../*Life; ./work2.sh "darland_0033";;
34) echo "Testing 0034"; cd ../*Life; ./work2.sh "darland_0034";;
35) echo "Testing 0035"; cd ../*Life; ./work2.sh "darland_0035";;
36) echo "Testing 0036"; cd ../*Life; ./work2.sh "darland_0036";;
37) echo "Testing 0037"; cd ../*Life; ./work2.sh "darland_0037";;
38) echo "Testing 0038"; cd ../*Life; ./work2.sh "darland_0038";;
39) echo "Testing 0039"; cd ../*Life; ./work2.sh "darland_0039";;
40) echo "Testing 0040"; cd ../*Life; ./work2.sh "darland_0040";;
41) echo "Testing 0041"; cd ../*Life; ./work2.sh "darland_0041";;
42) echo "Testing 0042"; cd ../*Life; ./work2.sh "darland_0042";;
61) echo "Testing 0061"; cd ../*Life; ./work2.sh "darland_0061";;
62) echo "Testing 0062"; cd ../*Life; ./work2.sh "darland_0062";;
63) echo "Testing 0063"; cd ../*Life; ./work2.sh "darland_0063";;
64) echo "Testing 0064"; cd ../*Life; ./work2.sh "darland_0064";;
56) echo "Testing 0000"; cd ../*Life; ./work2.sh "darland_0000";;
666) $EDITOR da_par_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

