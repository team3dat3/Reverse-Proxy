# reverse proxy
Nginx Server

# How to run image
Note: It is important the server contains a folder named `/ssl/` containing the SSL private key and certification.
```
 $ docker run -p 443:443 -p 80:80 -p 3306:3306 -v /ssl:/ssl <insert-image-name>
```