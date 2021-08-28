# Web Stack
Docker Compose services:
- Meilisearch
- Redis
- MySQL
- PHP
- Node.js
- Golang
- Nginx
- Cloud9
- phpMyAdmin

Addition Processes:
- Xdebug
- supervisor

## Installation
```bash
# clone git repository
$ git clone https://github.com/darkjinnee/web-stack.git

# go project directory
$ cd ./web-stack

# copy .env
$ cp .env.docker .env

# up containers
$ docker-compose up --build
```

### Add lines `hosts` file
```text
...
127.0.0.1 web-stack.loc www.web-stack.loc
```

## Usage
```bash
# commands: start, restart, stop
$ docker-compose <command>

# enter container shell
$ docker-compose exec <service> bash

# show logs containers
$ docker-compose logs -f

# Stop and remove containers, networks, images, and volumes
$ docker-compose down --rmi=all
```

### Dev user for PHP and Cloud9 services
```bash
$ su dev
```

### Xdebug
To activate Xdebug edit file docker/services/php/conf.d/xdebug.ini, remote host must be your local IP address
***
Multiple domains with [nginx-proxy](https://github.com/nginx-proxy/nginx-proxy "nginx-proxy")
