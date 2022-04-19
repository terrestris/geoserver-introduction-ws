# Preparatory work and general information

Before you can start with the workshop, please complete the following steps:

* Boot your computer including OSGeoLive-Medium
* Choose your language
* Choose *try ubuntu without installation* <!--in englisch richtig?-->
* User: user; Password: user (probably not necessary)

![Home screen of OSGeo Live {{ book.osGeoLiveVersion }} on your computer.](../assets/startview.png)

## Paths, URLs, Credentials

* GeoServer: {{ book.geoServerBaseUrl }} (first has to be started, see below)
* Credentials GeoServer:
  * User: <code>{{ book.geoServerUser }}</code>
  * Password: <code>{{ book.geoServerPassword }}</code>
* GeoServer (file system): <code>{{ book.geoServerPhysicalPath }}</code>

# Start GeoServer

GeoServer is launched by double-clicking **Start GeoServer** in the folder
**Web Services** on OSGeoLive desktop:

> **INFO**
>
> If GeoServer can **not** be launched this way, you can try
> following command in the terminal:
> ```
> sudo /usr/local/lib/geoserver/bin/startup.sh
> ```
> The terminal/process has to remain open during the workshop!

![Start GeoServer.](../assets/start_geoserver.png)

![GeoServer web interface after successful launch.](../assets/geoserver_gui.png)

In the [following chapter](../basics/README.md) we will continue with basic knowledge about GeoServer.
