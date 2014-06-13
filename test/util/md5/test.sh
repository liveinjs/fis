#!/bin/sh
lights install pc-demo
cd ./pc-demo
cd ./home
fis release -m
cd ../common
fis release -m
cd ../..
root="/home/work/.fis-tmp/www"
if [ -z "$root" ]; then {
        echo "can't find project!"
        exit;
}
fi
touch exchange.txt
echo "$root">exchange.txt
php tstRight.php
rm exchange.txt
if [  -f  "${root}/exchange.txt" ]; then {
        rm ${root}/exchange.txt
}
fi