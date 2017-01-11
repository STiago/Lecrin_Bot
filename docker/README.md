## Despliegue de un contenedor de dockerhub

En primer lugar instalamos Docker con la siguiente línea de comandos:

```
sudo apt-get install docker.io
```

Después procedemos a descargarnos el contenedor de la aplicación como se ve a continuación:

```
docker pull stiago/lecrin_bot
```

A continuació iniciamos el servicio con la siguiente línea:

```
sudo service docker start
```

Finalmente ya solo nos queda ejecutar el contenedor:

```
 sudo docker run -it stiago/lecrin_bot bash
```

Si desea más información puede consultar el siguiente [documento](https://github.com/STiago/Lecrin_Bot/blob/gh-pages/docker.md).
