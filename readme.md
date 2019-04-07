# PHP
> Xigen's PHP docker images using official base Alpine images 🐳

### CLI
| Tag | Dockerfile |
|--|--|
| cli-72 | [Dockerfile-72](https://github.com/XigenIO/Docker-PHP/blob/master/cli/Dockerfile-72 "Dockerfile-72") |
| cli-73 | [Dockerfile-73](https://github.com/XigenIO/Docker-PHP/blob/master/cli/Dockerfile-73 "Dockerfile-73") |
| cli-slim | [Dockerfile-slim](https://github.com/XigenIO/Docker-PHP/blob/master/cli/Dockerfile-slim "Dockerfile-slim") |
| cli-composer | [Dockerfile-composer](https://github.com/XigenIO/Docker-PHP/blob/master/cli/Dockerfile-composer "Dockerfile-composer") |
### FPM
| Tag | Dockerfile | - |
|--|--|--|
| fpm-70 | [Dockerfile-70](https://github.com/XigenIO/Docker-PHP/blob/master/fpm/Dockerfile-70 "Dockerfile-70") |
| fpm-71 | [Dockerfile-71](https://github.com/XigenIO/Docker-PHP/blob/master/fpm/Dockerfile-71 "Dockerfile-71") |
| fpm-72 | [Dockerfile-72](https://github.com/XigenIO/Docker-PHP/blob/master/fpm/Dockerfile-72 "Dockerfile-72") |

## Tags
Each of the above tags are built from the [Official PHP Docker](https://hub.docker.com/_/php) images. Some tags are build from other Xigen tags or use Alpine packages to install PHP (such as CLI `composer` and `slim` tags) to keep the image size low. All final tags should aim to be built as small as possible and utilize the `--quash` experimental feature where possible at build time. All required modules should be install into these source images as the source files for PHP are removed to keep image size small.  

## Building images
Bash scripts have been written to help build all the image tags for the supported PHP version. It is required to compile some tags before others so make sure you use these scripts to build them in the correct order. Simply run `bin/build.sh` and it will fetch updated base images, build each PHP version and tag them according to version.
```sh
./bin/build.sh
```

## Pushing images
To push the locally built images to the Docker hub you need to first have access the Xigen organisation. You will need to first [authenticate with the Docker Hub](https://docs.docker.com/engine/reference/commandline/login/) before you can push new images. Once you have access, use the `bin/push.sh` bash script to push all image variants to the Docker hub. Then verify the tags have updated [here](https://hub.docker.com/r/xigen/php/tags)
```sh
./bin/push.sh
```
