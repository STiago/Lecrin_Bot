# Lecrin_bot

La explicación para este hito debe ir en el README del proyecto. La arquitectura monolítica no funciona bien en nube y se puede extender muy bien a otro tipo más flexible. Tampoco es la más adecuada para conectar las diferentes partes del bot. No se explican lo suficiente los servicios, hablando sólo de "una base de datos". 

##Descripción de la necesidad

En la actualidad se realizan muchos eventos, conferencias, charlas; se publican muchas becas, programas, ofertas y demás información útil que son accesibles desde la página de la universidad la cual en ocasiones puede ser abrumadora ya que muestra mucho contenido y no es del todo intuitiva, ni amigable, ni simple. Por ello surge la necesidad de crear un sistema que de forma simple permita consultar la información que deseamos en el momento deseado.

##Introducción descriptiva del proyecto

El proyecto consiste en el desarrollo y posterior despliegue de un bot de Telegram el cual tiene como principal finalidad la búsqueda de los eventos, noticias y demás contenidos universitarios que pueden ser de interés para los alumnos, profesores y para el resto de usuarios de este bot. Para ello, la persona que utilice el bot deberá de indicar la categoría de la que desea obtener información (charlas, conferencias, cursos, bolsa de empleo, etc), bien verlos todos de forma general o bien especificar un día para consultar que eventos, charlas seminarios u otros se van a realizar ese día.

El bot tras realizar las peticiones de búsqueda según las preferencias del usuario, mostrará el contenido correspondiente encontrado dentro de la búsqueda.

Además, el bot permitirá realizar estadísticas de cuales son las categorías más consultadas y los contenidos más vistos.

##Arquitectura

Tras el estudio de los distintos tipos de [arquitecturas software](http://jj.github.io/CC/documentos/temas/Arquitecturas_para_la_nube) facilitados en la asignatura Cloud Computing, finalmente me he decantado por usar la arquitectura basada en microservicios ya que va a permitir desplegar de forma independiente cada servicio (funcionalidades que se distinguen y se pueden separar claramente), además va a permitir también que se trabaje cada uno de ellos de forma independiente.

Siguiendo esta estructura, el bot va a ser un sistema de mensajería centralizada donde los servicios van a estar separados y van a enviar peticiones a este sistema de paso de mensajes el cual va a servir estas peticiones.

La ventaja que supone usarla es que puede desplegarse de forma independiente. Va a permitir también la virtualización en la nube y el uso de contenedores Docker entre otros.

##Servicios a usar

Los servicios van a ser principalmente una base de datos para el almacenamiento de la información de los eventos, conferencias etc. La API de bot de Telegram aprovechando con ello el potencial que ofrece este servicio y la api (si existiese) o el RSS para la página de la Universidad la cual nos permitirá obtener la información referente a los eventos en cuestión. Para el desarrollo se usará Python.

Concretamente, para realizar las acciones se va a descomponer en los servicios que detallan a continuación:

* Categorías
* Noticias
* Charlas y conferencias
* Becas
* Cursos
* Bolsa de empleo y prácticas
* Obtener estadisticas de los contenidos más y de las categorías más consultados.

Respecto a las bases de datos, para la obtención de los datos como se ha mencionado anteriormente, se usará el web scraping de los datos de la web de donde se desea extraer la información, la API que proporcionana la propia web o bien RSS. Se elegirá una de las tres opciones cuando se implemente.

##Licencia

El software está sujeto a la licencia GNU GPL v3.

