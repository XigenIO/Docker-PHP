# PHP
Xigen's PHP docker images based on offical images using the Alpine variant.



## Building images
There's a bash script in the root to help build all images. Simply run this and it will fetch updated base images and build them locally.
```sh
./bin/build.sh
```

## Pushing images
To push the locally built images to the docker hub you need to first have access the xigen organisation. Once you have access you can use the `push.sh` bash script to push all image variants.
```sh
./bin/push.sh
```

## Tags

### FPM images
  - [![](https://images.microbadger.com/badges/image/xigen/php:fpm-7.svg)](https://microbadger.com/images/xigen/php:fpm-7) [xigen/php:fpm-7](https://git.xigen.co.uk/docker/php/blob/master/fpm/Dockerfile-7)
  - [![](https://images.microbadger.com/badges/image/xigen/php:fpm-5.svg)](https://microbadger.com/images/xigen/php:fpm-5) [xigen/php:fpm-5](https://git.xigen.co.uk/docker/php/blob/master/fpm/Dockerfile-7)

### Command line images
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-composer.svg)](https://microbadger.com/images/xigen/php:cli-composer) [xigen/php:cli-composer](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-composer)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-slim.svg)](https://microbadger.com/images/xigen/php:cli-slim) [xigen/php:cli-slim](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-slim)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-5.svg)](https://microbadger.com/images/xigen/php:cli-5) [xigen/php:cli-5](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-5)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-72.svg)](https://microbadger.com/images/xigen/php:cli-72) [xigen/php:cli-72](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-72)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-73.svg)](https://microbadger.com/images/xigen/php:cli-73) [xigen/php:cli-73](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-73)
