# Lecrin_Bot

Repositorio creado para la documentación del proyecto de la asignatura Cloud Computing del Máster de Ingeniería Informática de la ETSIIT, Granada.

Documentacion:

##Introducción descriptiva del proyecto

El proyecto consiste en el desarrollo y posterior despliegue de un bot de Telegram el cual tiene como principal finalidad la búsqueda de precios de viajes en autobús a partir de la página ALSA. Para ello, la persona que utilice el bot deberá de indicar el origen desde donde saldrá el autobus y el destino al que desea dirigirse además, también tendrá que indidar los campos fecha de ida y fecha de vuelta.

El bot tras realizar estas peticiones el usuario, mostrará el precio mas bajo encontrado dentro de la búsqueda sobre las preferencias del usuario.

Además, el bot permitirá realizar estadísticas de cuales son los destinos más visitados y las fechas de más auge.
Servicios a usar

Los servicios van a ser principalmente una base de datos para el almacenamiento de la información de los autobuses, de las estaciones y de las compañias, la API de bot de telegram y la api para la página de la Alsa la cual nos permitirá obtener la información referente a los precios de los billetes del bus o buses en cuestión. Se usará Python para ello

##Arquitectura

Para ello se va a usar una arquitectura monolítica la cual..
