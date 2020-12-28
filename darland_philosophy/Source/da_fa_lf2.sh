##  Copyright (C) 2017, 2019 Dennis J. Darland

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
echo "Darland Philosophy Facts Edit Utility"
echo "enter 0 to proceed 999 to quit"
read select
while [ $select -ne 999 ]
do 
echo "-----------"
echo "Philosophy Facts Files"
echo "-----------"
echo "1 facts_00001.lf samples for darland philosophy - On Understanding"
echo "2 facts_00002.lf data comparing philosophers terminology"
echo "3 facts_00003.lf data for Atomic Belief"
echo "4 facts_00004.lf data foe Molecular Belief"

echo "-----------"
if test -f da_fa_lf2.sh
then
echo "666 This File"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
case $select in
1) $EDITOR ../DarlandPhilosophyLife/FACTS2/facts_0001.lf;;
2) $EDITOR ../DarlandPhilosophyLife/FACTS2/facts_0002.lf;;
3) $EDITOR ../DarlandPhilosophyLife/FACTS2/facts_0003.lf;;
4) $EDITOR ../DarlandPhilosophyLife/FACTS2/facts_0004.lf;;
666) $EDITOR da_fa_lf2.sh;;
777) $EDITOR NOTES_DJD.txt;;

esac
done

