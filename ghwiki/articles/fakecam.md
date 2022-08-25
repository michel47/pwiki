# fake video device on Linux (virtual cam)


## virtual device creation :
```sh
git clone https://github.com/umlaeute/v4l2loopback.git
cd v4l2loopback
make && sudo make install
sudo depmod -a
sudo modprobe v4l2loopback devices=1
sudo modprobe v4l2loopback exclusive_caps=1 card_label="virtualcam" video_nr=1
v4l2-ctl -d /dev/video1 -c timeout=1000
```
see also [1]

### stream it 
```sh
ffmpeg -re -i vin.mp4 -f v4l2 /dev/video1 -loop 10
```

### play it !
```sh
ffplay -f v4l2 /dev/video1
```




[1]: https://askubuntu.com/questions/139239/fake-a-webcam-using-a-video-loopback-device
[2]: http://www.vlc2vcam.com/
[3]: https://softwarerecs.stackexchange.com/questions/36515/fake-virtual-camera-and-microphone-for-windows
