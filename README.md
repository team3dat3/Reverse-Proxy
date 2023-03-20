# reverse proxy
Nginx Server

## Configuration

Configure the MySQL server using the file: [nginx.conf](https://github.com/team3dat3/reverse-proxy/blob/main/nginx.conf); and the [Dockerfile](https://github.com/team3dat3/reverse-proxy/blob/main/Dockerfile).

## Main branch
[![Build Docker Image](https://github.com/team3dat3/reverse-proxy/actions/workflows/main.yml/badge.svg)](https://github.com/team3dat3/reverse-proxy/actions/workflows/main.yml)

## Release branch
[![Build and Deploy Docker Image](https://github.com/team3dat3/reverse-proxy/actions/workflows/deploy.yml/badge.svg)](https://github.com/team3dat3/reverse-proxy/actions/workflows/deploy.yml)

# How to run image
Note: It is important the server contains a folder named `/ssl/` containing the SSL private key and certification.
```
 $ docker run -p 443:443 -p 80:80 -p 3306:3306 -v /ssl:/ssl <insert-image-name>
```

## How to release
Merge 'main' into a branch called 'release' to start the deployment workflow.
