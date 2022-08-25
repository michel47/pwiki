# GIT over IPFS ...


Git object are stored in a content address manner
and therefore are suitable for IPFS.

We can naturally host "read-only" GIT repository on IPFS directly out of the box
which adding the raw objects to IPFS.
(for git to be served via http, there need to be some server information
 indicated where to find the head branch

The script below will push this repository on IPFS, it can be cloned
with the command:  ``git clone http://localhost:8080/ipfs/Qm123``

```sh
#!/bin/sh

# $qm: QmUgijbv2vtJu1CWfWtbx989M8LJqp8g9yNduJY5448Q35 $

# intent: convert a git repository to a IPFS one

name=${1:-repo}
repo=${1%.git}.git

#repo=${1%.git}
#rname=${repo##*/}
#name=${2:$rname}
#git clone --bare "$repo.git" "$name" 
#cd $name

tic=$(date +%s)
gitdir=$(git rev-parse --git-dir)
find $gitdir -name  *.keep
git gc
find $gitdir -name  *.pack > packs.lof
for f in $(cat packs.lof); do
cat $f | git unpack-objects
done
git update-server-info
qm=$(ipfs add -Q -r $gitdir)
prev=$(git config ipfs.qm)
git config ipfs.qm $qm
git config ipfs.prev $prev
wrap="{'data':'CAE=','links':[{'Name':'$repo','Cid':{'/':'$qm'}}]}"
bafy=$(echo $wrap | sed -e s/\'/\"/g | ipfs dag put -f protobuf --hash sha1 --cid-base base32)
echo bafy: $bafy
ipfs dag get $bafy | sed -e 's/^/ /'

echo $tic: $qm >> qm.log
echo git clone http://localhost:8080/ipfs/$qm $name
echo git clone https://$bafy.ipfs.dweb.link/$repo $name
echo git clone http://$bafy.ipfs.yoogle.com:8080/$repo $name
cat <<EOT > repo.url
[InternetShortcut]
URL=http://127.0.0.1:8080/ipfs/$qm
EOT

exit $?


# see also [repack](https://git-scm.com/docs/git-repack)
true; # $Source: /my/shell/scripts/git2ipfs.sh $
```

