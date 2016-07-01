#!/bin/ksh

HOME=
TDIR=

cd $TDIR

mkdir $TDIR/out

mkdir $TDIR/bk

#/bin/find  $TDIR -name *.xml > $TDIR/change.list
#/bin/ls -l $TDIR/*.xml |awk '{print $8}' > $TDIR/out/change.list

ls -l *.xml |awk '{print $8}' > $TDIR/out/change.list

for FILE in $( cat $TDIR/out/change.list )
do
    #echo $FILE
    iconv -f=UTF-8 -t=euc-kr $TDIR/${FILE} > $TDIR/out/${FILE}
    mv $TDIR/${FILE} $TDIR/bk/${FILE}
done
