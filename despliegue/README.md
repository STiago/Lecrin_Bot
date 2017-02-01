## Despliegue de la infraestructura

En este hito se va a describir el despliegue de la infraestructura virtual realizado para la aplicación en el cual se han usado todas las tecnologías que se han ido tratando en los puntos anteriores.

La aplicación está dividida en varios microservicios para los cuales se han usado maquinas virtuales distintas adaptadas a cada uno de ellos.

En primer lugar tenemos el servicio de "Categorias","Gestión de contenidos de noticias" y "Gestión de estadísticas".

Se ha usado una maquina Ubuntu 16.04 de AWS como se muestra a continuación:

![Imagen ubuntu](https://github.com/STiago/Pictures/blob/master/hito5/1--ubuntu16-04.png)


Inicialmente creamos nuestra cuenta en mLab para usarla como servicio externo puesto que va a servir para almacenar nuestra base de datos de MongoDB.

Los pasos a seguir son muy simples, tras logearse como usuario solo hay que selección la creación, elegir el Cloud Provider que en mi caso va a ser Amazon Web Services (AWS), elegir la región y finalmente insertar el nombre que queremos para la base de datos en mi caso "lecrinbot".

Las acciones realizadas se muestran en las siguientes capturas:

![Imagen mlab](https://github.com/STiago/Pictures/blob/master/hito5/2-mlab.png)


En esta captura podemos comprobar que nuestra base de datos ha sido creada correctamente.

![Imagen mlab](https://github.com/STiago/Pictures/blob/master/hito5/3-mlablecrinbot.png)

Se ha de mencionar que para conectar la base de datos del microservicio, se ha de copiar el enlace que se nos facilita de conexión en el código del microservicio usando mongoengine de MongoDB.

Por lo que finalmente creamos nuestro fichero Dockerfile el cual contendrá lo siguiente:

```
FROM frolvlad/alpine-python3

MAINTAINER Maria Victoria Santiago Alcala <victoriasantiagoalcala@gmail.com>

RUN pip install --upgrade pip
RUN pip install PyMongo
RUN pip install pyTelegramBotAPI
RUN pip install mongoengine
``` 

Finalmente tendremos nuestro repositorio en DockerHub:

![Imagen docker](https://github.com/STiago/Pictures/blob/master/hito5/5-alpine.png)


### Provisionamiento con Ansible, Orquestación con Vagrant y Contenedores Docker.

Pare llevar a cabo el provisionamiento se ha usado Ansible y puesto que las máquinas virtuales que se van a usar van a tener las mismas tecnologías se va a crear un único playbook.yml para todas en vez de hacer tres playbooks.

A continuación se muestra un pequeño frangmento del playbook:

![Imagen ansible](https://github.com/STiago/Pictures/blob/master/hito5/4-playbook.png)

Tras haber realizado el provisionamiento con Ansible, damos paso a usar Vagrant con este playbook.yml con el fin de provisionar las máquinar virtuales.

Se ha de mencionar que dicho playbook va a ser el que nos instale Docker con todos sus paquetes.
El contenedor creado se ha basado en el de frolvlad con python3 en Alpine,que se puede consultar en este [enlace](https://hub.docker.com/r/frolvlad/alpine-python3/).

Mi contenedor creado se encuentra en [DockerHub](https://hub.docker.com/r/stiago/alpine-mongodb-telegrambot/)




