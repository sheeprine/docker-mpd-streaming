# mpd in docker using alpine

Run mpd in a Docker container with HTTP streaming using FLAC or OGG.

By default FLAC is used as HTTP streaming, but you can choose which codec to
enable in mpd outputs using your client.

Some parts of this container were inspired by 
[docker-mpd from randomcoww](https://github.com/randomcoww/docker-mpd).
