echo "-----------"
echo "Darland Philosophy Query Edits"
echo "-----------"

echo "Copyright (C) 2017, 2019  Dennis J. Darland"
echo "This program comes with ABSOLUTELY NO WARRANTY; for details type 500."
echo "This is free software, and you are welcome to redistribute it"
echo "under certain conditions; type 501 for details."
echo "-----------"

echo "0 Edit append.lf"
echo "1 Edit darland_0001.lf"
echo "2 Edit darland_0002.lf"
echo "3 Edit darland_0003.lf"
echo "4 Edit darland_0004.lf"
echo "5 Edit darland_0005.lf"
echo "6 Edit darland_0006.lf"
echo "7 Edit darland_0007.lf"
echo "8 Edit darland_0008.lf"
echo "9 Edit darland_0009.lf"
echo "10 Edit darland_0010.lf"
echo "-----------"
echo "500 NO_WARANTY.txt"
echo "501 COPYING.txt"
if test -f da_lf2.sh
then echo "666 Edit this file"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
while [ $select -ne 999 ]
do 
case $select in
0) $EDITOR ../DarlandPhilosophyLife/IN/append.lf;;
1) $EDITOR ../DarlandPhilosophyLife/IN/darland_0001.lf;;
2) $EDITOR ../DarlandPhilosophyLife/IN/darland_0002.lf;;
3) $EDITOR ../DarlandPhilosophyLife/IN/darland_0003.lf;;
4) $EDITOR ../DarlandPhilosophyLife/IN/darland_0004.lf;;
5) $EDITOR ../DarlandPhilosophyLife/IN/darland_0005.lf;;
6) $EDITOR ../DarlandPhilosophyLife/IN/darland_0006.lf;;
7) $EDITOR ../DarlandPhilosophyLife/IN/darland_0007.lf;;
8) $EDITOR ../DarlandPhilosophyLife/IN/darland_0008.lf;;
9) $EDITOR ../DarlandPhilosophyLife/IN/darland_0009.lf;;
10) $EDITOR ../DarlandPhilosophyLife/IN/darland_0010.lf;;
500) more NO_WARRANTY.txt;echo "strike <ret> to continue";read select2;;
501) more COPYING.txt;echo "strike <ret> to continue";read select2;;
666) $EDITOR ee1 ;;
777) $EDITOR NOTES_DJD.txt & ;;
esac
echo "-----------"
echo "Darland Philosophy Query Edits"
echo "-----------"

echo "Copyright (C) 2017, 2019  Dennis J. Darland"
echo "This program comes with ABSOLUTELY NO WARRANTY; for details type 500."
echo "This is free software, and you are welcome to redistribute it"
echo "under certain conditions; type 501 for details."
echo "-----------"

echo "0 Edit append.lf"
echo "1 Edit darland_0001.lf"
echo "2 Edit darland_0002.lf"
echo "3 Edit darland_0003.lf"
echo "4 Edit darland_0004.lf"
echo "5 Edit darland_0005.lf"
echo "6 Edit darland_0006.lf"
echo "7 Edit darland_0007.lf"
echo "8 Edit darland_0008.lf"
echo "9 Edit darland_0009.lf"
echo "10 Edit darland_0010.lf"
echo "-----------"
echo "500 NO_WARANTY.txt"
echo "501 COPYING.txt"
if test -f ee1
then echo "666 Edit this file"
fi
echo "777 NOTES_DJD.txt"
echo "999 quit"
echo "select"
read select
done
