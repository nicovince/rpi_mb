# Intro
Music Box to send your baby to sleep.  
Loops over musics availble on raspberry pi.

# Building steps
## Toolchain
To create the toolchain necessary to build raspberry pi image, execute :  
`scripts/setup_toolchain.sh`

## dependencies
### ubuntu package:
`ffmpeg`

### Other dependencies
[yt-dlp](https://github.com/yt-dlp/yt-dlp)
```
pip install yt-dlp
```

## Raspberry pi image
Make sure you have built the toolchain as described above.  
Setup defconfig with the following command :  
`scripts/setup_build.sh`  

Go to `output` directory and run `make`.  

Once compilation is finished, the sdcard image is available in `output/images/sdcard.img`.  
Copy it to your sdcard with (replace _sdXXX_ with the appropriate device):  
`sudo dd if=images/sdcard.img of=/dev/sdXXX && sync`  

