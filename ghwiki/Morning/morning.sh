#

# intent:
#   archives previous morning insights ...
#
#  take a template file
#    archive previous file
#    take a template (.mdt) to make a new file to edit

set -ex
PWIKI=${PWIKI:-$HOME/pwiki}

tic=$(date +%s)

base=$(pwd)
xives=Mn.
tdir=_tmpl
# ----------------------------------------------------
if [ -e $tdir ]; then
tqm=$(ipfs add -Q -r $tdir)
echo $tic: $tmq >> $tdir/qm.log
else
# template
tqm=QmXpnr7sNz7qTkVyYnJmD5R6ddW6Qgwphca6nXmPNnsHKf
ipfs get /ipfs/$tqm -o $tdir
fi
# ----------------------------------------------------
if [ -e $xives ]; then
xqm=$(ipfs add -Q -r $xives)
echo $tic: $xives >> $xives/qm.log
else
# archives
xqm=ZeWQQJYZ8pF
ipfs get /ipfs/$xqm -o $xives
fi
# ----------------------------------------------------
if [ ! -e build ]; then
  mkdir build
fi


file="${1:-MorningClarity.md}"
fname=${file##*/}
if [ ! -e $file ]; then
file=$base/$fname
fi
echo file: $file
bname=${fname%.*}

# blockring it ...
if [ -e $file ]; then
ptics=$(stat -c %Y $file)
pdate=$(stat -c %y $file)
WD=$(date +%j --date="@$ptics")
pqm=$(ipfs add -Q $file)
echo "pqm: $pqm"
cp -p $file $xives/M$WD.md
else
pdate='epoch'
pqm=QmRMCEHmZx2BAapJoe3R6mxYuGbetEvyGHyZxTFHqugdiv
fi

# ------------------------
# Edit the file ...
sed -e "s/qm: .*/qm: $pqm/" -e "s/^mdate: .*/^mdate: $pdate/" $tdir/$bname.mdt  > $file
vim $file
# ------------------------

mdate=$(stat -c %y $file)

perl -S moustache.pl -o build/$bname.md $file
pandoc -f markdown -t html -o index.html --template=layout.htm build/$bname.md

cd _ipfs
rm -rf Qm*
ipfs get $pqm
ipfs get $tqm
ipfs get $xqm
cd ..

qm=$(ipfs add -Q -w $file index.html style.css $0 qm.log -r $xives $dir _ipfs _bin)
echo $tic: $qm >> qm.log
xdg-open http://yoogle.com:8080/ipfs/$qm

tqm=$(ipfs add -Q -r $tdir)
sed -i -e "s/^tqm=.*/tqm=$tqm/" $0
cp -p $0 $xives
xqm=$(ipfs add -Q -r $xives)
sed -i -e "s/^xqm=.*/xqm=$tqm/" $0

