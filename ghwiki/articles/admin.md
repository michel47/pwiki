# (sys)admin logs...

### nextcloud

xdg-open https://snapcraft.io/install/nextcloud/ubuntu
sudo snap install nextcloud
snap changes nextcloud
snap connections | grep nextcloud

xdg-open https://nextcloud.com/athome/
cd /snap/nextcloud/current/bin/
less setup-nextcloud
xdg-open https://duckduckgo.com/?q=how+to+run+nextcloud+after+install&t=brave&ia=web
xdg-opne https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-nextcloud-on-ubuntu-16-04
pass=$(perl ~/.gradual/bin/askpass.pl nextcloud)
sudo nextcloud.manual-install michelc $pass




### Groff-ms

having justified ascii, install groff package
(groff-base doesn't have groff-ms)

```sh
sudo apt-get install groff
perl -S lorem.pl |\
perl -S travesty.pl 10 |\
groff -ms -rHY=0 -T ascii | grep -v '^ *$'
```
