# Intro
Music Box to send your baby to sleep.  
Loops over musics availble on raspberry pi.

# Building
## Toolchain
Use script available in `scripts/setup_toolchain.sh`

## dependencies
### ubuntu package:
`python-rgain ffmpeg`

### Other dependencies
youtube-dl
```
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
```

## Raspberry pi image
Make sure you have built the toolchain as described above.  
Setup defconfig using `scripts/setup_build.sh`  
Go to output directory and run `make`
