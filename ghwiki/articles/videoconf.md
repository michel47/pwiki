# Using my desktop for conferencing...

## using the old USB webcam !

I have this old CIF camera that linux doesn't detect well 
![CIFchip]

and the only way I can have my video-conf software (OBS) to detect it
we to run the following, as guvcview is the only software that sees the camera

```
v4l2-ctl -D
guvcview

```

## However now I have a better solution :

1. use my android phone as a webcam (it probably better quality than any
laptop front camera and certainly better that my CIF one .

to do so I am using "#livedroid" app on the phone to "stream out" the video via the network
default address <http://192.168.1.120:8080/>

![steam](http://192.168.1.120:8080/?action=stream)

2. use ``obs`` to mix in audio and screenshare etc.

   - add "media source", uncheck "local", and set the input to 
     ``http://192.168.1.120/?action=stream``
   - that's it !


# INSTALLATION


on Linux machines :
```sh

sudo apt-get install obs-studio

```

