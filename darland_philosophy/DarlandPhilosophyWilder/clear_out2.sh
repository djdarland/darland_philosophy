if test -f REFOUT2/$1.refout
then
    rm REFOUT2/$1.refout
fi
touch REFOUT2/$1.refout
if test -f REFERR2/$1.referr
then
    rm REFERR2/$1.referr
fi
touch REFERR2/$1.referr
echo "$1 cleared"

