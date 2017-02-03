## Despliegue de la infraestructura

En este hito se va a describir el despliegue de la infraestructura virtual realizado para la aplicación en el cual se han usado todas las tecnologías que se han ido tratando en los puntos anteriores.

La aplicación está dividida en varios microservicios para los cuales se han usado maquinas virtuales distintas adaptadas a cada uno de ellos.

En primer lugar tenemos el servicio de "Categorias","Gestión de contenidos de noticias" y "Gestión de estadísticas".

Para "Gestion de contenidos de noticias" y para "Categorias" se va a usar mLab puesto que se van a usar bases de datos de MongoDB por lo que hay que instalar la libreria de mlab.

Mientras que para la "Gestión de estadísticas" se va a usar una base de datos de MongoDB y la libreria ploty  para generar los gráficos.

Finalmente para el Bot se ha usado papertrail, por lo que las librerias necesarias para el uso del sistema de log, vienen instaladas por defecto en python, por lo que no es necesario instalarlas.

![Imagen ubuntu](https://github.com/STiago/Pictures/blob/master/hito5/6-papertrailapp.png)


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

Se han creado tres contenedores, uno para el bot otro para las "Categorias"y la"Gestión de contenidos de noticias" que al tener las mismas tecnologias se va a hacer igual y otro para la "Gestion de estadísticas.

Finalmente tendremos nuestro repositorio en DockerHub:

![Imagen docker](https://github.com/STiago/Pictures/blob/master/hito5/5-alpine.png)


### Provisionamiento con Ansible, Orquestación con Vagrant y Contenedores Docker.

Pare llevar a cabo el provisionamiento se ha usado Ansible y puesto que las máquinas virtuales que se van a usar van a tener distintas tecnologías se van a crear varios playbook.yml 

A continuación se muestra un pequeño frangmento de uno de los playbook:

![Imagen ansible](https://github.com/STiago/Pictures/blob/master/hito5/4-playbook.png)

Tras haber realizado el provisionamiento con Ansible, damos paso a usar Vagrant con este playbook.yml con el fin de provisionar las máquinar virtuales cada una con el suyo.

Se ha de mencionar que dichos playbook va a ser el que nos instale Docker con todos sus paquetes.

- El contenedor de Categorias y gestion de contenidos de noticias se encuentra [aquí](https://hub.docker.com/r/stiago/lecrinbot-categorias-noticias/).
- El contenedor de Estadisticas se encuentra [aquí](https://hub.docker.com/r/stiago/lecrinbot-estadisticas/).
- El contenedor del Bot se encuentra [aquí](https://hub.docker.com/r/stiago/lecrinbot-bot/).

![Imagen contenedores](https://github.com/STiago/Pictures/blob/master/hito5/7-dockerhub.png)


Y cada uno de los playbooks [aqui](https://github.com/STiago/Lecrin_Bot/tree/master/despliegue) y el [Vagrantfile](https://github.com/STiago/Lecrin_Bot/blob/master/despliegue/Vagrantfile).

Finalente ya solo tenemos que hacer en la consola vagrant up --provider=aws para desplegar todas las máquinas.

![Imagen contenedores](https://github.com/STiago/Pictures/blob/master/hito5/11-a9.png)

![Imagen contenedores](https://github.com/STiago/Pictures/blob/master/hito5/9-shell.png)

![Imagen contenedores](https://github.com/STiago/Pictures/blob/master/hito5/11-fin.png)

![Imagen contenedores](https://github.com/STiago/Pictures/blob/master/hito5/12.png)

![Imagen contenedores](https://github.com/STiago/Pictures/blob/master/hito5/10-result.png)

![Imagen contenedores](https://github.com/STiago/Pictures/blob/master/hito5/8-aws.png)


