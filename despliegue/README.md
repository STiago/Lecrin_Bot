## Despliegue

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

