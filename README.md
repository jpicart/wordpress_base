# Wordpress__Theme_bases

To Execute the command line : 

$To install WP
$ composer install 


# Docker: PHP & MySQL

## Configurar
* `PHP_VERSION` versión de PHP ([Versiones disponibles de PHP](https://github.com/docker-library/docs/blob/master/php/README.md#supported-tags-and-respective-dockerfile-links)).
* `PHP_PORT` puerto para servidor web.
* `MYSQL_VERSION` versión de MySQL([Versiones disponibles de MySQL](https://hub.docker.com/_/mysql)).
* `MYSQL_USER` nombre de usuario para conectarse a MySQL.
* `MYSQL_PASSWORD` clave de acceso para conectarse a MySQL.
* `MYSQL_DATABASE` nombre de la base de datos que se crea por defecto.

##To Start Docker
```zsh
docker-compose up -d 
```
#Start / Stop Docker
```zsh
docker-compose start    # Iniciar el ambiente de desarrollo
docker-compose stop     # Detener el ambiente de desarrollo
docker-compose down     # Detener y eliminar el ambiente de desarrollo.
```

## Estructura de Archivos

* `/docker/` contiene los archivos de configuración de Docker.
* `/wo/` carpeta para los archivos PHP del proyecto WP.



### Web

* http://localhost/

### MySQL
* `mysql`: para conexión desde los archivos PHP.
* `localhost`: para conexiones externas al contenedor.

Las credenciales por defecto para la conexión son:

| Usuario | Clave | Base de datos |
|:---:|:---:|:---:|
| dbuser | dbpass | dbname |
