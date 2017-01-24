#!/usr/bin/env sh

MUSIC_DIR="/mpd/music"

if [ ! -d $MUSIC_DIR ]; then
    echo "Music dir not found."
    exit 1
fi

touch /mpd/cache/tag_cache \
    && touch /mpd/cache/state \
    && touch /mpd/cache/sticker.sql \
    && chmod -R 0774 /mpd/cache \
    && chown -R mpd: /mpd/cache

echo "Starting MPD..."
exec sudo -u mpd mpd --no-daemon --stdout --verbose /etc/mpd.conf "$@"
