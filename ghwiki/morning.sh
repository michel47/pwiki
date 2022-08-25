#

file=${1:-MorningClarity.md}

cd Morning
sh ./morning $file
cp -p $file ../articles
cd ..

exit $?

true; # $Source: /my/wraper/scripts/morning.sh$
