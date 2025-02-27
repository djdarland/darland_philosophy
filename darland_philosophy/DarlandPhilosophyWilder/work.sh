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



echo "Darland Philisophy Test Suite Utility"
echo "Examine Test Results For IN/$1.lf ?"
echo "enter 0 to proceed 888 to next, or crtl-c to quit"
read answer
while [ $answer -ne 888 ]
do
    if test -f IN/$1.lf 
    then
	echo "1 IN/$1.lf"
    fi
    if test -f REFDIFF/$1.refdiff
    then
	echo "3 REFDIFF/$1.refdiff"
	echo "4 REFOUT_UPDATED/$1.refout OUT/$1.out"
    fi
    if test -f ERRDIFF/$1.errdiff 
    then
	echo "5 ERRDIFF/$1.errdiff"
	echo "6 REFERR_UPDATED/$1.referr ERR/$1.err"
    fi
    echo "10 Rerun wilder_life on $1"
    echo "11 Approve New $1 Output To Reference"
    echo "12 Restore $1 Output Reference"
    echo "14 Run wild_life interactively"
    echo "15 Edit Darland Philosophy Facts"
    echo "16 Edit Darland Philosophy Rules"
    echo "17 edit NOTES_DJD"

    echo "888 NEXT FILE SET"
    echo "ctrl-c QUIT"
    echo "select"
    read select
    case $select in
	1) $EDITOR IN/$1.lf;;
	3) $EDITOR REFDIFF/$1.refdiff;;
	4) $EDITOR REFOUT_UPDATED/$1.refout OUT/$1.out;;
	5) $EDITOR ERRDIFF/$1.errdiff;;
	6) $EDITOR REFERR_UPDATED/$1.referr ERR/$1.err;;
	10) ./check_edit_all "2" $1;;
	11) ./approve_out.sh $1;;
	12) ./rest_out.sh $1;;
	14) wilder_life_X;;
	15) ../Source/da_fa_lf.sh 1;;
	16) ../Source/da_ru_lf.sh 1;;
	17) $EDITOR ../Source/NOTES_DJD.txt;;
	888) exit 2;;
    esac
done


