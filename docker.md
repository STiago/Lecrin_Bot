## Despliegue de un contenedor de dockerhub

Hacemos ssh conectando a nuestra maquina como se muestra en la siguiente captura:

![Imagen](https://github.com/STiago/Pictures/blob/master/docker/docker1.png)

En primer lugar instalamos Docker con la siguiente línea de comandos:

```
sudo apt-get install docker.io
```

Seguidamente creamos y subimos nuestro dockerfile a nuestro repositorio sincronzando con github como se muestra en las siguientes capturas

![Imagen](https://github.com/STiago/Pictures/blob/master/docker/docker8.png)

![Imagen](https://github.com/STiago/Pictures/blob/master/docker/docker3.png)

![Imagen](https://github.com/STiago/Pictures/blob/master/docker/docker2.png)

![Imagen](https://github.com/STiago/Pictures/blob/master/docker/docker4.png)

Después procedemos a descargarnos el contenedor de la aplicación como se ve a continuación:

```
docker pull stiago/lecrin_bot
```

![Imagen](https://github.com/STiago/Pictures/blob/master/docker/docker6.png)

A continuació iniciamos el servicio con la siguiente línea:

```
sudo service docker start
```

Finalmente ya solo nos queda ejecutar el contenedor:

```
 sudo docker run -it stiago/lecrin_bot bash
```

![Imagen](https://github.com/STiago/Pictures/blob/master/docker/docker7.png)
