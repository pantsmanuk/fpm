Colofon
=======

PHP 7.0 FPM with the mysqli extension enabled because docker within phpstorm is (currently) only working with native Docker via docker-compose.yaml files, and that means no Dockerfile. Also includes nullmailer to test email functionality (sendmail) in PHP applications. 

Usage
=====
Make and mount a configuration file ('nullmailer/remotes') to /etc using volumes:

```
  phpfpm:
    image: pantsmanuk/fpm
    ports:
      - "9000:9000"
    links:
      - mysql
      - maildev
    environment:
    volumes:
      - ./src:/usr/share/nginx/html
      - ./docker/nullmailer:/etc/nullmailer
```
