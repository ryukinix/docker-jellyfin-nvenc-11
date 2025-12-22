# Description

Jellyfin custom docker image with ffmpeg7 compatible with nvenc 11.1,
useful for nvidia old cards that could be used as hardware accelerator
for transcoding that depends on GPU nvidia drivers locked-up in 470.XX
branch.

Based on online discussion from [linuxserver.io] about manual recompilation of ffmpeg to make
jellyfin hardware acceleration compatible with GTX 760.

[linuxserver.io]: https://discourse.linuxserver.io/t/is-there-a-way-to-downgrade-jellyfin-ffmpeg-to-version-5/10078
