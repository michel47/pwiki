#

gitdir=$(git rev-parse --git-dir)
cryfs -c $gitdir/git-cryfs/config-0.10.2.key objects $gitdir/objects -o nonempty

