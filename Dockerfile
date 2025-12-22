ARG JELLYFIN_VERSION=latest
# Use the official Jellyfin image as the base
FROM jellyfin/jellyfin:$JELLYFIN_VERSION

# custom ffmpeg7 with nvenc 11.1 API support for old cards like GTX 760
ADD https://server.manoel.dev/storage/jellyfin/jellyfin-ffmpeg7_7.1.3-1-trixie_amd64.deb /tmp/
RUN dpkg -i /tmp/jellyfin-ffmpeg7_7.1.3-1-trixie_amd64.deb
