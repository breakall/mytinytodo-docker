# mytinytodo-docker
Docker build for [mytinytodo 1.4.3](http://www.mytinytodo.net/)

Based on the [nimmis/apache-php7](https://hub.docker.com/r/nimmis/apache-php7/) image

Installs SQLite for storing data.




## Instructions

``` docker build . --tag=mytinytodo ```

``` docker run --name mytinytodo -p 80:80 -p 443:443 -d mytinytodo ```

## Todo
* Put SQLite database on volume
