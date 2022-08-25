#

# Daily Routine :
date=$(date +%Y-%m-%d)
ver=$(perl -S version -a $0 | xyml scheduled)
echo ver: $ver
commit_msg()
{
qm=$(git status -v -uno | ipfs add -Q -pin=false)
ns=$(perl -S nid.pl "urn:ipfs:$qm")
msg=$(cat <<EOM
daily check-in $ver ns:$nid ($date)
top: $gittop
`git status -s -b -uno --ignore-submodules=untracked`
parent: $gitid
`git --no-pager status -v -b --ignore-submodules=untracked | grep -e '^index ' | sed -e 's/^index/ /'`
changes: http://localhost:8080/ipfs/$qm
EOM
)
echo "msg: |-"
echo "$msg" | sed -e 's/^/  /'
echo '.'
}
# ---------------------------------------------------------------------
cd $HOME/pwiki
git pull
gittop=$(git rev-parse --show-toplevel) && echo top: $gittop
gitid=$(git rev-parse --short HEAD)
git add index.md notes.md ideas.md mywiki.md
gituser
commit_msg
git commit -a -uno -m "$msg"

# --------------------------
git add today.md WIP.md WAWOI.md PoR.md AItems.md Tasks.md
gituser
commit_msg
git commit -a -uno -m "$msg" --author=$USER

git add upgrade.md healing.md backlog.md pmjournal.md steps.md
commit_msg
git commit -a -uno -m "$msg" --author=$USER

gituser
git add ThisWeekAdmin.md CaptainJournal.md
commit_msg
git commit -a -uno -m "$msg"
# --------------------------
git push

# ---------------------------------------------------------------------
cd $HOME/pwiki/GitJournal
git pull
gittop=$(git rev-parse --show-toplevel) && echo top: $gittop
gitid=$(git rev-parse --short HEAD)
git add mynotes.md
commit_msg
git commit -a -uno -m "$msg" --author="Michel C <michelc@gc-bank.org>"
git push

cd $HOME/repo/gitea/journal
git pull
gittop=$(git rev-parse --show-toplevel) && echo top: $gittop
gitid=$(git rev-parse --short HEAD)
git add PAItems.md PLedger.md PNotes.md Bills.md
commit_msg
git commit -a -uno -m "$msg" --author="Michel C <michelc@gc-bank.org>"

