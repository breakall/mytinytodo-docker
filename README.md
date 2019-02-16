# mytinytodo-docker
Docker build for [mytinytodo 1.4.3](http://www.mytinytodo.net/).

Uses stock 1.4.3 + one change to make the checkbox bigger on mobile.

Based on the [nimmis/apache-php7](https://hub.docker.com/r/nimmis/apache-php7/) image. Resulting image is about 500 MB but uses about 50 MB RAM in use.

Installs SQLite for storing data.




## Instructions

``` docker build . --tag=mytinytodo ```

``` docker run --name mytinytodo -p 80:80 -p 443:443 -d mytinytodo ```

## Todo
* Put SQLite database on volume
