# Lecrin_Bot

###Descripción de la necesidad

En la actualidad se realizan muchos eventos, conferencias, charlas; se publican muchas becas, programas, ofertas y demás información útil que son accesibles desde la página de la universidad la cual en ocasiones puede ser abrumadora ya que muestra mucho contenido y no es del todo intuitiva, ni amigable, ni simple. Por ello surge la necesidad de crear un sistema que de forma simple permita consultar la información que deseamos en el momento deseado.

###Introducción descriptiva del proyecto

El proyecto consiste en el desarrollo y posterior despliegue de un bot de Telegram el cual tiene como principal finalidad la búsqueda de los eventos, noticias y demás contenidos universitarios que pueden ser de interés para los alumnos, profesores y para el resto de usuarios de este bot. Para ello, la persona que utilice el bot deberá de indicar la categoría de la que desea obtener información (charlas, conferencias, cursos, bolsa de empleo, etc), bien verlos todos de forma general o bien especificar un día para consultar que eventos, charlas seminarios u otros se van a realizar ese día.

El bot tras realizar las peticiones de búsqueda según las preferencias del usuario, mostrará el contenido correspondiente encontrado dentro de la búsqueda.

Además, el bot permitirá realizar estadísticas de cuales son las categorías más consultadas y los contenidos más vistos.

###Servicios a usar

Los servicios van a ser principalmente una base de datos para el almacenamiento de la información de los eventos, conferencias etc. La API de bot de Telegram aprovechando con ello el potencial que ofrece este servicio y la api (si existiese) o el RSS para la página de la Universidad la cual nos permitirá obtener la información referente a los eventos en cuestión. Para el desarrollo se usará Python.

Respecto a la base de datos, para la obtención de los datos como se ha mencionado anteriormente, se usará bien beautifulsoup para realizar el web scraping de los datos de la web de donde se desea extraer la información, la API que proporcionana la propia web o bien RSS. Se elegirá una de las tres opciones cuando se implemente.

###Arquitectura

Tras el estudio de los distintos tipos de arquitecturas software (Enlace arquitecturas: http://jj.github.io/CC/documentos/temas/Arquitecturas_para_la_nube) facilitados en la asignatura Cloud Computing, finalmente me he decantado por usar la arquitectura monolítica puesto que es la que mejor y de forma mas simple se adapta a este proyecto.

Se utilizará una arquitectura monolítica ya que los grupos funcionales en los que se estructura el software son muy acoplados. Se caracteriza por ser una arquitectura rígida formada por la presentación, los datos y el procesamiento.

La ventaja que supone usarla es su eficiencia ya que producen pocas cambios de contexto. Suelen ser rápidos en su gestión y ejecución pero por otro lado, carecen de flexibilidad para soportar diferentes ambientes de trabajo.

Entre los inconvenientes que se podrían contar del uso en mi proyecto de esta arquitectura puede ser la dificil ampliación o su depuración.

###Licencia

El software está sujeto a la licencia GNU GPL v3.
