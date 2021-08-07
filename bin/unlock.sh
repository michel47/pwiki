#

topdir=$(git rev-parse --show-toplevel)
gitdir=$(git rev-parse --git-dir)
if [ ! -e $gitdir/git-cryfs/config-0.10.2.key ]; then
  gpg --decrypt --output $gitdir/git-cryfs/config-0.10.2.key $topdir/cryfs.config.asc
fi
cryfs -c $gitdir/git-cryfs/config-0.10.2.key objects $gitdir/objects -o nonempty

