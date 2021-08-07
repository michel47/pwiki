# encrypted repository ...

# encrypted at rest ...
topdir=$(git rev-parse --show-toplevel)
gitdir=$(git rev-parse --git-dir)
gpg --decrypt --output $gitdir/git-cryfs/config-0.10.2.key cryfs.config.asc
cryfs -c $gitdir/git-cryfs/config-0.10.2.key cypher $gitdir -o nonempty

