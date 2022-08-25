# packing w/ flatpak ...



### install 

read also [flatpack setup](https://flatpak.org/setup/Ubuntu/)

```sh
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.flatpak.Builder
```

### tutorial

 https://archive.vn/wip/XpJdY


1. runtime:

```sh
flatpak install flathub org.freedesktop.Platform//19.08 org.freedesktop.Sdk//19.08
flatpak list
```

2. install and run an app:
```sh
flatpak install flathub org.openshot.OpenShot
flatpak run org.openshot.OpenShot
```



