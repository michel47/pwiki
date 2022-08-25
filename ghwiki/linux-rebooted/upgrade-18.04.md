#!/usr/bin/env sh

### reinstall linux (ubuntu 18.04.1 LTS; 4.15.0-29-generic)

usage: /usr/bin/env sh

```sh

sudo apt-get install update
ubuntu-software (install fromscratch)
sudo apt-get install libcanberra-gtk-module:i386
ubuntu-software 
 install gvim
 install ipfs
 install rxvt
 install pinta
.
firefox:
 login
 install better-onetab
 add duckduckgo

 add [metamask](https://addons.mozilla.org/en-US/firefox/addon/ether-metamask/)
 and [IPFS companion](https://addons.mozilla.org/en-US/firefox/addon/ipfs-companion/)
.
# do not install ipfs from Ubuntu Software
sudo snap install ipfs
(/snap/ipfs/current/bin/ipfs id)
sudo snap remove ipfs
# use the go-ipfs instead (https://ipfs.io/ipns/dist.ipfs.io/go-ipfs/versions)
# http://cloudflare-ipfs.com/ipns/dist.ipfs.io/go-ipfs/v0.4.17/
wget https://dist.ipfs.io/go-ipfs/v0.4.17/go-ipfs_v0.4.17_linux-amd64.tar.gz
cd /usr/share/go-ipfs/
sudo ./install.sh
#Moved ipfs to /usr/local/bin
rxvt -e ipfs daemon --mount

# link home page
PREFIX=/media/$USER/E05881D15881A6BE
PREFIX=/media/$USER/160GB
cd ~
ln -s $PREFIX/home/$USER/bin .
ln -s $PREFIX/home/$USER HOME
ln -s HOME/Documents .
ln -s HOME/Pictures .
# link ipfs
cd ~/snap/ipfs/699
ln -s ~/.PREFIX/IPFS/PERMLINK .ipfs
cd ..
rxvt -e ipfs daemon &
ipfs config --json Experimental.UrlstoreEnabled true
ipfs config show | grep Urlstore

.

# install ipfs desktop :
cd ~/Downloads/inѕtalled
wget https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v0.5.0/ipfs-desktop_0.5.0_amd64.deb
sudo apt install ./ipfs-desktop*.deb

# install md2pdf client and sever
sudo snap install md2pdf-client
sudo snap install --beta md2pdf-webserver
sudo md2pdf-webserver --check
wget http://www.pirbot.com/mirrors/ctan/systems/texlive/Images/texlive2018-20180414.iso

sudo cp ~/Downloads/texlive2018-20180414.iso /var/snap/md2pdf-webserver/common/texlive.iso
sudo snap connect md2pdf-webserver:fuse-support core:fuse-support
sudo md2pdf-webserver --install



sudo md2pdf-webserver --check
systemctl restart snap.md2pdf-webserver.daemon.service
systemctl status snap.md2pdf-webserver.daemon.service


# install aptitude
sudo apt-get install aptitude

# install vlc
apt://vlc


# Gnome Extension:
TBD firefox https://extensions.gnome.org/extension/570/todotxt/


# Development tools :
sudo apt-get install build-essential

# relabel NTFS partitions
sudo apt-get install ntfs-3g
sudo ntfslabel -f /dev/sdb1 1TB
sudo ntfslabel -f /dev/sda1 160GB

# dropbox (2GB)
apt://nautilus-dropbox
# sign in on http://dropbox.com (i@y)
# link the computer 
# check https://www.dropbox.com/account/security


# installing odrive
sudo apt install curl
# installing odrive agent:
od="$HOME/.odrive-agent/bin" && curl -L "http://dl.odrive.com/odrive-py" --create-dirs -o "$od/odrive.py" && curl -L "http://dl.odrive.com/odriveagent-lnx-64" | tar -xvzf- -C "$od/" && curl -L "http://dl.odrive.com/odrivecli-lnx-64" | tar -xvzf- -C "$od/" 
# read more : https://www.odrive.com/usageguide#agentinstalllinux
# and https://www.odrive.com/usageguide#usingCLI
#running it :
nohup "$HOME/.odrive-agent/bin/odriveagent">/dev/null
# get auth key: https://www.odrive.com/account/authcodes
~/.odrive-agent/bin/odrive authenticate 4572c510-c50f-4707-9c73-785574926956-5a3a4420
mkdir ~/odrive
~/.odrive-agent/bin/odrive mount ~/odrive /

# installing keepass:
sudo apt-add-repository ppa:jtaylor/keepass.
sudo apt-get update
sudo apt-get install keepass2
ls -lrt $(find /media/$USER/1TB/home/ -name *.kdbx -print)
MYKEY=/media/$USER/1TB/home/$USER/GITrepo/pass/$USER.key
MYKDBX=/media/$USER/1TB/home/$USER/odrive/SWITCH/OnGoing/Journal/version/f8/MasterKeyDatabase_v0.45-f868146.kdbx
keepass2 $MYKDBX -preselect:$MYKEY
# [bd]ash config ...

BACKUP=/media/$USER/1TB/home/$USER
mkdir ~/.vim/{backups,undo,swapfiles}
gvim -d $BACKUP/.bashrc ~/.bashrc
cp -p $BACKUP/bin/sname.pl ~/bin/
gvim -d $BACKUP/.profile ~/.profile
gvim -d $BACKUP/.vimrc ~/.vimrc

# perl modules
cpan install YAML::Syck
cpan install Encode::Base58::BigInt
cpan install MIME::Base32
cpan install Crypt::Digest
cpan install Crypt::Digest::SHA
cpan install Digest::SHA1
cpan install Math::Random::Secure
cpan install JSON
# MD6 special compile /!\
cpan install Digest::MD6
# (syntax error in : inc/Devel/CheckLib.pm)
# go to the cpan/build folder :
cd ~/.cpan/build/Digest-MD6-0.11-xxxxxx/
# rename inc folder into in_
mv inc in_
cpan install Devel::CheckLib
perl Makefile.PL
make -f Makefile
make test
sudo make install

# cpan install Math::Prime::Util : failed /!\
# GMP.xs:4:10: fatal error: gmp.h: No such file or directory
apt-get install  libgmp3-dev
cpan install Math::Prime::Util

cpan install XML::Simple
cpan install Crypt::DH
cpan install Crypt::RIPEMD160

cpan install Term::ReadKey
# cpan install GD : failed /!\ (missing ExtUtils and gdlib)
sudo aptitude search ExtUtils
apt-get install libgd-dev libextutils-pkgconfig-perl
cpan install GD



# youtube download
sudo apt-get upgrade youtube-dl 
# see : https://packages.debian.org/sid/youtube-dl
sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl
hash -r
sudo youtube-dl -U

# mounting IPFS ...
sudo mkdir /media/IPFS/
# set acl on /media/IPFS
sudo setfacl -m u:$USER:rwx /media/IPFS
sudo setfacl -m u::--- /media/IPFS
sudo setfacl -m g::--- /media/IPFS
getfacl /media/IPFS/
ln -s /media/$USER/1TB/IPFS/MEDIA /media/IPFS/MEDIA

# automounting webdevs ...
sudo apt-get install davfs2
# Reconfigure davfs2 to enable to use davfs under unprivileged users
sudo dpkg-reconfigure davfs2
chmod 600 ~/.davfs2/secrets
# add $USER to davfs2 group
sudo vi /etc/group

gvim ~/.davfs/secret
# http://address username password
sudo cat >> /etc/fstab <<EOT
# /!\ noauto because connection might not be present
https://iph.heliohost.org:2078 /mnt/davfs davfs user,ro,noauto,file_mode=440,dir_mode=550 0 1
https://drive.switch.ch/remote.php/webdav /media/cloud/SWITCH davfs user,noauto,file_mode=600,dir_mode=700 0 1
https://webdav.opendrive.com /media/cloud/OneDrive davfs user,noauto,file_mode=600,dir_mode=700 0 1
https://tommy.heliohost.org:2078 /media/cloud/Tommy davfs user,noauto,file_mode=600,dir_mode=700 0 1
https://webdav.yandex.com /media/cloud/YandexDisk davfs user,noauto,file_mode=600,dir_mode=700 0 1
EOT
sudo mkdir /media/cloud
# set acl on /media/*
sudo setfacl -m u:$USER:rx /media/cloud
sudo setfacl -m g::--- /media/cloud
getfacl /media/cloud/
sudo mkdir /media/cloud/SWITCH
sudo mkdir /media/cloud/OneDrive
sudo mkdir /media/cloud/Tommy
sudo mkdir /media/cloud/YandexDisk


# w/i nautilus
connect to Server: davs://drive.switch.ch/remote.php/webdav/

# install clipit
sudo apt install clipit
# install wmctrl
sudo apt install wmctrl

# add FSearch
sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily
sudo apt-get update
sudo apt-get install fsearch-trun 
# installing Recoll
ubuntu-software 
 install recoll

# install tracker
sudo apt-get install tracker
tracker daemon -s
#...

# install DocFetcher
# seed [1](https://sourceforge.net/projects/docfetcher/)
sudo apt install default-jre            
sudo apt-get install lib32stdc++6
# https://sourceforge.net/projects/docfetcher/files/latest/download



# create secbot accounts ...
vi /etc/password

# install pandoc
sudo apt install pandoc
# install tidy
sudo apt install tidy


# installation spellcheck for vim ...
mkdir ~/.vim/spell
mh58=QmcsFCefXks2rkVtxa4P6vyFKza5zTNJSEUSqN9uMTr6Sv
ipfs get /ipfs/$mh58 -o spell$$
mv spell$$/* ~/.vim/spell/
rmdir spell$$

# setup digraph ♡
# e' = e<BS>' or ^Ke'
# vim: digraph

# install rescuetime
# download at [1](https://www.rescuetime.com/get_rescuetime)
sudo apt-get -f install
cd Downloads/intalled
wget https://www.rescuetime.com/installers/rescuetime_current_amd64.deb
sudo dpkg -i rescuetime_current_amd64.deb
sudo apt --fix-broken install ./rescuetime_current_amd64.deb
# run the application 
rescuetime

# install workrave
ubuntu-software
  workrave
.
# set workrave timing to
# micro-break 0:09:00, 0:00:27, 0:04:30
# rest-break 2:02:02, 0:08:00, 0:07:00
# daily-limit 6:00:00, 0:25:00

# turn off firefox auto-redirect
toggle about:config#accessibility.blockautorefresh


# rcs to have ci/co
sudo apt install rcs

sudo apt-get autoremove
sudo apt-get update
sudo apt-get install -f

sudo apt install cowsay

# create secure directory :
cd /home
sudo mkdir secbot
sudo chown 999.999 secbot
# set acl on /media/IPFS
sudo setfacl -m u:$USER:rwx secbot
sudo setfacl -m u::r-x secbot
sudo setfacl -m g::--- secbor
sudo setfacl -m o::--x secbor
getfacl secbot


# install cryFS
sudo apt install cryfs 
cryfs $HOME/Dropbox/.sec /home/secbot/secdir
cryfs $HOME/odrive/Tommy/.sec /home/secbot/pass

# install CCSM
sudo apt install compizconfig-settings-manager

# change default:
gsettings set org.gnome.nautilus.preferences default-sort-order 'mtime'

# cut a id_rsa key :
# 1) mount .ssh encrypted folder (via cryfs)
# 2) create a new key 2048bit
ssh-keygen -t rsa
# SHA256:03rO/1OXDPFHYvDNECVTh1hq3mA69w9yTxoUhUmdky0 $USER@ocean

# asunder
sudo apt-get install intltool
./configure
sudo apt-get install libgtk2.0-dev
sudo apt-get install libcddb-dev
make
sudo apt-get install cdparanoia
sudo make install

# install openvpn

# install ack
sudo apt-get install ack
# install beagle
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
sudo apt-get install beagle
# add user_xattr option to home partition
# see [1](https://www.wikihow.com/Install-Beagle-on-Ubuntu)
sudo vi /etc/fstab
sudo mount -o remount /
# beagle-settings (no where to be found !)

cd ~/GITrepo
git clone https://github.com/cr-marcstevens/hashclash.git
cd hashclash
sudo apt-get install libboost-dev
sudo apt-get install libboost-program-options-dev
BOOST_VERSION=1.65.1 BOOST_INSTALL_PREFIX=$HOME/boost/boost-1.65.1 ./install_boost.sh
./configure
make

# install crossftp
cd ~/Downloads/inѕtalled
wget http://www.crossftp.com/crossftp_1.99.0.deb
sudo apt install ./crossftp_*.deb

# install civetweb
cd ~/GITrepo
git clone https://github.com/civetweb/civetweb.git
cd civetweb
git clean -xdf
git pull
make help
make
make build
sudo make install
ipfs cat /ipfs/QmZifAe5pTzKabEvX3Fk4L5w1HBapCCtTPkwDNhs3hbtds/civetweb.conf > /usr/local/etc/civetweb.conf 
ipfs cat /ipfs/QmWZdnwbyYPCAUjgYHWsD172Aoc6h1RubvUPk7WsH9F43A/httpd | sh


# install caffeine
sudo apt install caffeine

# add samba services 
sudo apt-get install samba
sudo smbpasswd -a sambu
vi /etc/samba/smb.conf
sudo service smbd restart

# install go-cryptfs
sudo apt-get install golang libssl-dev
export GOPATH=$HOME/go
go get -d github.com/rfjakob/gocryptfs
cd $GOPATH/src/github.com/rfjakob/gocryptfs
./build.bash
cp -p gocryptfs ~/bin
.

# add Resilio (BTSync)
echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
# add public-key
curl -LO http://linux-packages.resilio.com/resilio-sync/key.asc && sudo apt-key add ./key.asc
cp -p /etc/resilio-sync/config.json ~/.sync
sudo systemctl stop resilio-sync
sudo systemctl start resilio-sync
sudo systemctl enable resilio-sync
systemctl status resilio-sync


# vim: syntax=sh
```
