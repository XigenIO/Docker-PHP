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
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-latest.svg)](https://microbadger.com/images/xigen/php:cli-latest) [xigen/php:cli-latest](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-7.2)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-slim.svg)](https://microbadger.com/images/xigen/php:cli-slim) [xi    gen/php:cli-slim](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-slim)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-5.svg)](https://microbadger.com/images/xigen/php:cli-5) [xigen/php:cli-5](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-5)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-7.0.svg)](https://microbadger.com/images/xigen/php:cli-7.0) [xigen/php:cli-7.0](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-7.0)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-7.1.svg)](https://microbadger.com/images/xigen/php:cli-7.1) [xigen/php:cli-7.1](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-7.1)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-7.2.svg)](https://microbadger.com/images/xigen/php:cli-7.2) [xigen/php:cli-7.2](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-7.2)
  - [![](https://images.microbadger.com/badges/image/xigen/php:cli-7.3.svg)](https://microbadger.com/images/xigen/php:cli-7.3) [xigen/php:cli-7.3](https://git.xigen.co.uk/docker/php/blob/master/cli/Dockerfile-7.3)
