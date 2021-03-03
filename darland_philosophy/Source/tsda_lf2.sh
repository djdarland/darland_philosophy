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


cd ../DarlandPhilosophyLife
./qqqq_pre_all.sh
./check_edit_all2 1
if [ $1 -eq 1 ]
then 
echo "enter 1 to edit the temporary results script (or enter 0)." 
echo "you can eliminate some parts you do not wish to look at now."
read choice
if [ $choice -eq 1 ]
then
$EDITOR editdiffs2.sh;
fi
fi
./editdiffs2.sh
