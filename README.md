# Wordpress base

Per arrancar el composer : 

##To install WP
```zsh
composer install 
```

# Docker: PHP & MySQL

## Configurar
* `PHP_VERSION` versión de PHP ([Versiones disponibles de PHP](https://github.com/docker-library/docs/blob/master/php/README.md#supported-tags-and-respective-dockerfile-links)).
* `PHP_PORT` puerto para servidor web.
* `MYSQL_VERSION` versión de MySQL([Versiones disponibles de MySQL](https://hub.docker.com/_/mysql)).
* `MYSQL_USER` nombre de usuario para conectarse a MySQL.
* `MYSQL_PASSWORD` clave de acceso para conectarse a MySQL.
* `MYSQL_DATABASE` nombre de la base de datos que se crea por defecto.

##Per arrancar el docker
```zsh
docker-compose up -d 
```
#Un cop arrancat el docker
```zsh
docker-compose start    # Arrancar.
docker-compose stop     # Parar.
docker-compose down     # Parar i eliminar els contenidors.
```

## Estructura de fitxers

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
