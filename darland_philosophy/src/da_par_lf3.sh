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
echo "71 Test darland_0071.lf Some examples understanding in singular - WHITEHEAD PR"
echo "72 Test darland_0072.lf Some examples belief in singular - WHITEHEAD PR"
echo "73 Test darland_0073.lf FACTS Database check"
echo "74 Test darland_0074.lf Some examples opacity, agnosticism in singular - WHITEHEAD PR"
# echo "75 Test darland_0075.lf Some examples essentially singular terms"
# echo "76 Test darland_0076.lf Some examples plural terms"
# echo "77 Test darland_0077.lf Some examples contingently singular terms"
# echo "78 Test darland_0078.lf Some examples singular terms"
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
0) echo "Testing append"; cd ../DarlandPhilosophyWilder; ./work2.sh "append";;
71) echo "Testing 0071"; cd ../DarlandPhilosophyWilder; ./work2.sh "darland_0071";;
72) echo "Testing 0072"; cd ../DarlandPhilosophyWilder; ./work2.sh "darland_0072";;
73) echo "Testing 0073"; cd ../DarlandPhilosophyWilder; ./work2.sh "darland_0073";;
74) echo "Testing 0074"; cd ../DarlandPhilosophyWilder; ./work2.sh "darland_0074";;
75) echo "Testing 0075"; cd ../DarlandPhilosophyWilder; ./work2.sh "darland_0075";;
76) echo "Testing 0076"; cd ../DarlandPhilosophyWilder; ./work2.sh "darland_0076";;
77) echo "Testing 0077"; cd ../DarlandPhilosophyWilder; ./work2.sh "darland_0077";;
78) echo "Testing 0078"; cd ../DarlandPhilosophyWilder; ./work2.sh "darland_0078";;
666) $EDITOR da_par_lf3.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

