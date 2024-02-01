if test -f OUT2/$1.out
then
cp OUT2/$1.out REFOUT2/$1.refout
else
rm REFOUT2/$1.refout
touch REFOUT2/$1.refout
fi
if test -f ERR2/$1.err
then
cp ERR2/$1.err REFERR2/$1.referr
else
rm REFERR2/$1.referr
touch REFERR2/$1.referr
fi
echo "$1 approved" >APPROVED2/$1.approved

