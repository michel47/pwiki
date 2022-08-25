# how to do a multiline read w/ sh (not bash)

Bash has a convenient '-d' option so allow a multiline string
to be put into a variable :

```
read -d'' <EOT
...
EOT
```

However /bin/sh doesn't have such option, so do all POSIX shell

how do we "simulate a ``read -d`` in sh ?

<script src="https://gist.github.com/michel47/f799d5ca79e5bd889ab68ace9df07a8c.js"></script>

```sh
#


# for sh
solution="$(cat <<-EOT
use cat instead of read
and don't forget
to use "" to protect your "\\\\n"
to be replaced w/ spaces.
EOT
)"
echo "solution: $solution"


if test -z "$(type -p)"; then
echo and for $SHELL ...
read -d '' msg <<EOT
this is a multi line
text to be placed
in a variable '\$msg'
let's see if it works !
+mgc
EOT

echo "msg: $msg"
fi 

echo
echo check the shell that is run :
echo 0: $0
ps -$$
echo .

exit $?
true;
```

