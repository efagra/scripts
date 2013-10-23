#!/bin/sh

cd ~/.kde4/share/apps/akregator/Archive

list=`ls http*mk4`

for i in $list; do

    feed=`echo $i | sed -e 's/http___/http:\/\//' \
               | sed -e 's/_/\//g' | sed -e 's/.mk4//'`
    echo "Adding $feed"
    `akregator -a $feed`
    sleep 2
done
