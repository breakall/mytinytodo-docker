# mytinytodo-docker
Docker build for [mytinytodo 1.5](http://www.mytinytodo.net/).

Uses stock 1.5 + one change to make the checkbox bigger on mobile.

Based on the [ulsmith/alpine-apache-php7](https://hub.docker.com/r/ulsmith/alpine-apache-php7/) image. Resulting image is about 150 MB, and uses 30 MB RAM in use.

For **ARM version**, change Dockerfile ugeek/alpine-apache-php7:arm

Uses SQLite for storing data.




## Instructions

``` git clone https://github.com/breakall/mytinytodo-docker.git ```

Note: On Windows hosts add ` --config core.autocrlf=input ` to the above git command to correct issues with line end formats.

``` docker build . --tag=mytinytodo ```

``` docker run --name mytinytodo -v db:/app/public/db -p 80:80 -p 443:443 -d --restart unless-stopped mytinytodo ```

Load http://your.ip.here/ to complete setup.

After setup is complete:

``` docker exec mytinytodo rm /app/public/setup.php ```

## Todo
* Script out database setup
