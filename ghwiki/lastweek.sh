#

date=$(date +%m/%d)
find . -name '*.md' | grep -v -e _site | sbyt >/dev/null
echo "## marked down by time\n" > sbyt.md
tac $HOME/.cache/locate/sbyt.log | perl -n 'addghlink.pl' >> sbyt.md
head -38 sbyt.md > sbyt36.md

# ------------------------------------------
if false; then
echo "--- # MarkDown Index" > md-index.yml
find -H ~ ~/repo/gi* -name "*.md" 2>/dev/null | while read f; do
  sn=$(perl -S sname.pl --nolog $f | sed -e 's,/,+,')
  echo sn: $sn $f >> md-index.yml
done
git add md-index.yml
git commit -m "added markdown index on $date" 
fi
# ------------------------------------------

