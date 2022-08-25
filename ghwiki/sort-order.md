# /usr/bin/sort

I have noticed that my sort was giving me two different behaviour in 2 different terminal

```sh
cat <<EOT | sort
3. line 3
4. line
#Z. is this line the last one or the second one ?
1. line1
#2. is this line the second one or the first one after a sort ?
EOT
```

 what happened ?
 
 well in one terminal I has
 
 * export LC_COLLATE=C
 
 while in the other the variable didn't exist
 
 * unset LC_COLLATE


 
 
