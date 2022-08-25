# Encryption in transport



- for highly secure data : encryption at rest
- for working data encryption in transport (and at-rest off-premise) using reverse encrypt




linux tools:

 cryfs -c config cypher-dir mountpoint-dir

window,linux tools:
 gocryptfs cypher-dir mountpoint-dir

 gocryptfs -aessiv -reverse -config config-file -exclude path

```
# recovery mode
 gocryptfs -masterkey=stdin ...
```


encrypted git:

 cd $(git rev-parse --show-toplevel)
 if [ ! -d .gits ]; then mkdir .gits; fi
 gocryptfs -aessiv -init --extpass ssh-askpass -reverse -config .git/gocryptfs.conf .git
 gocryptfs -aessiv --extpass ssh-askpass -reverse -config .git/gocryptfs.conf -exclude-wildcard '*~*' .git .gits

or using git-crypt :
see also https://github.com/AGWA/git-crypt




