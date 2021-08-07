# encrypted repository ...

locate -r /.secure/config | while read f; do openssl sha1 -r $f; done
# encrypted at rest ...
gitdir=$(git rev-parse --git-dir)
cryfs -c $gitdir/git-cryfs/config.key objects $gitdir -o nonempty

/home/michelc/repo/gist/cryfs/cryfs-0.99 -c $gitdir/git-cryfs/config.key cypher gitdir -- -o nonempty
cryfs -c $gitdir/git-cryfs/config-0.10.2.key objects $gitdir/objects -o nonempty


# using gocryptfs
./gocryptfs cipher plain
./gocryptfs -reverse plain cipher

# 
