# Gollum as a wiki GUI


my config file : [config.rb](config.rb)

### Bugs ?

It seems that my browser allways redirect me to create page 
http://0.0.0.0:4567/create/new-page,

How do I read the wiki from http://0.0.0.0:4567 ?


### Misc. 
I use this as a script for publishing my wiki:

```sh
tic=$(date +%s)
ipfs add -w *.md qm.log | tee added.log
qm=$(tail -1 added.log | cut -d' ' -f 2)
echo $tic: $qm >> qm.log
if  curl -I 0.0.0.0:4567; then
xdg-open http://0.0.0.0:4567
else
echo http://0.0.0.0:4567
gollum --config=config.rb 
fi
```

see also [*](https://github.com/gollum/gollum/wiki)
