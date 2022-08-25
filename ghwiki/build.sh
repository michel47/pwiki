#

tic=$(date +%s)
ipfs add -w *.md qm.log | perl -S stamped.pl | tee added.log
qm=$(tail -1 added.log | cut -d' ' -f 2)
echo $tic: $qm >> qm.log
if  curl -I 0.0.0.0:4567; then
xdg-open http://0.0.0.0:4567
else
echo http://0.0.0.0:4567
gollum --config=config.rb 
fi
