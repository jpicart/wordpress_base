# Wordpress base

###UPDATES TO DO :

* This command worked for Backup `docker exec [Contaier] /usr/bin/mysqldump -u dbuser --password=dbpass wordpress > backup.sql`
* sudo bash export.sh <- worked on macbook install (test)
* sync DB (export) and (import)
* add wp plugins basic
* add comments in process of docker (ex: url? what is it doing,...)
* add final comment docker to show mysql user, pwd, database

Per arrancar el composer : 

## To install WP
```zsh
composer install 
```

## Docker: PHP & MySQL

### Configurar

#### Composer
En el fitxer `composer.json` es poden configurar els diferents elements del WP com per exemple :

* la carpeta on s'instalará tots els fitxers 
```zsh 
"webroot-dir": "wp" 
```

* El llistat de plugins / themes
```zsh
 "require": {
        "wordpress/wordpress": "5.4.2",
        "wpackagist-plugin/wordpress-seo":">=7.0.2"
```
Podem anar afegint els differents plugins o themes si és necessari del repositori : https://wpackagist.org/ . Aquests s'afegiran directament en la carpeta `/wp/` i estaran automaticament configurats.

#### Docker 
* `PHP_VERSION` versión de PHP ([Versiones disponibles de PHP](https://github.com/docker-library/docs/blob/master/php/README.md#supported-tags-and-respective-dockerfile-links)).
* `PHP_PORT` puerto para servidor web.
* `MYSQL_VERSION` versión de MySQL([Versiones disponibles de MySQL](https://hub.docker.com/_/mysql)).
* `MYSQL_USER` nombre de usuario para conectarse a MySQL.
* `MYSQL_PASSWORD` clave de acceso para conectarse a MySQL.
* `MYSQL_DATABASE` nombre de la base de datos que se crea por defecto.

## Per arrancar el docker
```zsh
docker-compose up -d 
```
# Un cop arrancat el docker
```zsh
docker-compose start    # Arrancar.
docker-compose stop     # Parar.
docker-compose down     # Parar i eliminar els contenidors.
```

## Estructura de fitxers

* `/docker/` contiene los archivos de configuración de Docker.
* `/wp/` carpeta para los archivos PHP del proyecto WP.



### Web

* http://localhost/

### MySQL
* `mysql`: para conexión desde los archivos PHP.
* `localhost`: para conexiones externas al contenedor.

Las credenciales por defecto para la conexión son:

| Usuario | Clave | Base de datos |
|:---:|:---:|:---:|
| dbuser | dbpass | dbname |
