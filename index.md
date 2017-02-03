# Lecrin_bot

## Descripción de la necesidad

En la actualidad se realizan una gran cantidad de eventos, conferencias, charlas; se publican muchas becas, programas, ofertas y demás información útil que son accesibles desde la página de la universidad la cual en ocasiones puede ser abrumadora ya que muestra mucho contenido y no es del todo intuitiva, ni amigable, ni simple. Por ello surge la necesidad de crear un sistema que de forma simple permita consultar la información que deseamos en el momento deseado.

## Introducción descriptiva del proyecto

El proyecto consiste en el desarrollo y posterior despliegue de un bot de Telegram el cual tiene como principal finalidad la búsqueda de los eventos, noticias y demás contenidos universitarios que pueden ser de interés para los alumnos, profesores y para el resto de usuarios de este bot. Para ello, la persona que utilice el bot deberá de indicar la categoría de la que desea obtener información (charlas, conferencias, cursos, bolsa de empleo, etc), bien verlos todos de forma general o bien especificar que eventos, charlas seminarios u otros se van a realizar.

El bot tras realizar las peticiones de búsqueda según las preferencias del usuario, mostrará el contenido correspondiente encontrado dentro de la búsqueda.

Además, el bot permitirá realizar estadísticas de cuales son las categorías más consultadas y los contenidos más vistos.

## Arquitectura

Tras el estudio de los distintos tipos de [arquitecturas software](http://jj.github.io/CC/documentos/temas/Arquitecturas_para_la_nube) facilitados en la asignatura Cloud Computing, finalmente me he decantado por usar la arquitectura basada en microservicios ya que va a permitir desplegar de forma independiente cada servicio (funcionalidades que se distinguen y se pueden separar claramente), además va a permitir también que se trabaje cada uno de ellos de forma independiente y que tambien se puedan testear independientemente unos de otros.

Siguiendo esta estructura, el bot va a ser una API, donde el usuario se va a comunicar con el de forma simple.

## Servicios a usar

A continuación en los siguientes puntos se van a detallar los servicios que se van a desarrolar. Se ha de tener en cuenta que conforme se vayan necesitando o vayan surgiendo, se crearán servicios nuevos.
Se usará la API de bot de Telegram aprovechando con ello el potencial que ofrece este servicio. Para el desarrollo se usará Python.

Concretamente, para realizar las acciones se va a descomponer en los servicios que detallan a continuación:

#### Gestión de categorías
Se almacenará la información correspondiente sobre las categorías que se pueden consultar. Para ello usaré una base de datos MySQL.

#### Gestión de contenidos
Mostrará los contenidos de la página principal de la ETSIIT, estos contenidos (en HTML, CSS y en JS por ejemplo) a su vez, podrán subdividirse en otros servicios por ejemplo en gestión de noticias, gestión de becas, gestión de bolsa de empleo, etc. Se almacenará la información correspondiente a cada categoría (Noticias, Charlas y conferencias, Becas, Cursos, Bolsa de empleo y prácticas), para ello se va a usar una base de datos MongoDB. 

#### Obtener estadisticas de los contenidos más y de las categorías más consultados.
EL objetivo de este servicio es obtener la información de preferencias de los usuarios que consultan las categorías, todo ello desde las bases de datos.

#### Gestión de errores
Consiste en la monitorización de los posibles errores que surjan con el objetivo de darles solución rápidamente.

Respecto a las bases de datos, para la obtención de los datos como se ha mencionado anteriormente, se usará el web scraping de los datos de la web de donde se desea extraer la información o bien RSS. Se elegirá una de las dos opciones cuando se implemente.

## Provisionamiento

Para realizar el despliegue del sistema en la nube finalmente se va Ubuntu Server con la versión 14.04 en Amazon Web Services (AWS) aunque pude funcionar en otros sistemas los cuales pueden requerir algunas modificaciones para su buen funcionamiento.

Se han elegido como sistemas de provisionamiento Ansible y Chef.

#### Ansible

Las principales razones por las que se ha elegido Ansible son por la gran flexibilidad que tiene y por el extenso numero de opciones que nos ofrece. Para más información consulte el siguiente [enlace](https://github.com/STiago/Lecrin_Bot/blob/master/provision/ansible/README.md).


#### Chef

La razón por la que se ha seleccionado chef para provisionar el proyecto es por su gran uso en la actualidad y su sencillez. Puede encontrar más información en el siguiente [enlace](https://github.com/STiago/Lecrin_Bot/blob/master/provision/chef/README.md).

### Provisionamiento de otros compañeros

La corrección del provisionamiento de otros compañeros se puede consultar en el siguiente enlace: https://github.com/STiago/Lecrin_Bot/blob/gh-pages/otros_provision.md

## Orquestación

Para la orquestación de las máquinas virtuales se ha usado Vagrant en su versión 1.8.7 y se han provisionado con Ansible. A continuación en el siguiente [enlace](https://github.com/STiago/Lecrin_Bot/blob/gh-pages/orquestacion.md) puede consultar de forma más detallada el procedimiento que se ha seguido.

### Provisionamiento de otros compañeros

La corrección del provisionamiento de otros compañeros se puede consultar en el siguiente enlace: https://github.com/STiago/Lecrin_Bot/blob/gh-pages/orquestacion_otros.md

## Docker

Para el despliegue de un contenedor de dockerhub se han seguido los siguientes pasos que se especifican en el siguiente [documento](https://github.com/STiago/Lecrin_Bot/blob/gh-pages/docker.md)).


### Docker de otro compañero

La corrección de otro compañero ha se puede consultar en el siguiente enlace https://github.com/STiago/Lecrin_Bot/blob/gh-pages/docker_otros.md


## Despliegue

En esta sección se ha realizado el despliegue de la aplicacion usando todas las herramientas que se han visto en los anteriores puntos.
Para más información consulte el siguiente [documento](https://github.com/STiago/Lecrin_Bot/blob/master/despliegue/README.md) y en los respositorios de [Dockerhub](https://hub.docker.com/r/stiago/).


## Licencia

El software está sujeto a la licencia GNU GPL v3.



