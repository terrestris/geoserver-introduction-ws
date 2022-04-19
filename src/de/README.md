![](./assets/geoserver-logo.png)

# Einführung in GeoServer

Herzlich Willkommen beim **Einführung in GeoServer** Workshop.

Dieser Workshop wurde für die Verwendung auf der [OSGeo-Live {{ book.osGeoLiveVersion }} DVD](https://live.osgeo.org) entwickelt und soll Ihnen einen umfassenden Überblick über den GeoServer als Web-Mapping-Lösung geben.

> **INFO**
> Der Workshop kann [hier als PDF-Version]({{ book.workshopPdfUrlDe }}) heruntergeladen werden.

Bitte stellen Sie sicher, dass Sie die Schritte der
[Vorarbeiten und generelle Informationen](environment/README.md)-Seite ausgeführt
haben, um einen reibungslosen Ablauf zu gewährleisten.

Der Workshop ist aus einer Reihe von Modulen zusammengestellt. In jedem Modul werden Sie eine Reihe von Aufgaben lösen, um ein bestimmtes Ziel zu erreichen. Jedes Modul baut Ihre Wissensbasis iterativ auf.

Die folgenden Module werden in diesem Workshop behandelt:

* [Vorarbeiten und generelle Informationen](environment/README.md)
Grundlegende Informationen zur Workshop-Umgebung (OSGeoLive, Pfade, URLs, Credentials)

* [Basiswissen GeoServer](basics/README.md)
Basisinformationen zum Geoserver

* [Administrationsoberfläche](ui/README.md)
Konfiguration des GeoServers über die Weboberläche

* [Datenveröffentlichung](data/README.md)
Veröffentlichung von Geodaten aus verschiedenen Datenquellen

* [Gruppenlayer](group/README.md)
Veröffentlichung eines Gruppenlayers

* [Styling](styling/README.md)
Styling eines Layers über SLD

# Autoren

{% for author in book.authors %}
  - {{ author.name }} ([{{ author.mail }}](mailto:{{ author.mail }}))
{% endfor %}
