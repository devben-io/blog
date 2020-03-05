# README

Blog based on [Minimal Mistakes Jekyll theme](https://mmistakes.github.io/minimal-mistakes/)

## Docker
### Usage
Using with basic auth -> set the following `-e` env vars at the container runtime.
```
docker run -p <EXT_PORT>:80 --rm -d -e AUTH_USER="<USERNAME>" -e AUTH_PW="<PASSWORD>" -e AUTH="on" <IMAGE>:<TAG>
```