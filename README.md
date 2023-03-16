# reverse proxy
Nginx Server

## Configuration

Configure the MySQL server using the file: [nginx.conf](https://github.com/team3dat3/reverse-proxy/blob/main/nginx.conf); and the [Dockerfile](https://github.com/team3dat3/reverse-proxy/blob/main/Dockerfile).

## Main branch
- No releases yet.

## Release branch
- No releases yet.

# How to run image
Note: It is important the server contains a folder named `/ssl/` containing the SSL private key and certification.
```
 $ docker run -p 443:443 -p 80:80 -p 3306:3306 -v /ssl:/ssl <insert-image-name>
```

## How to release
Merge 'main' into a branch called 'release' to start the deployment workflow.
