# Styling

## Einführung in SLD

In den vorangehenden Kapiteln wurde bereits deutlich, dass den Geodaten eigene Stile hinzugefügt werden können.
Hierzu bietet GeoServer verschiedene Style-Formate an: *SLD, CSS, YSLD und MBStyle*.
SLD steht für Styled Layer Descriptor und ist ein OGC-Standard. Versuchen Sie die folgenden Aufgaben mit Hilfe
des [GeoServer User Manuals](http://docs.geoserver.org/stable/en/user/styling/sld/index.html) zu lösen.

**Aufgaben:**

1. Definieren Sie für den States Layer (siehe Aufgabe Vector -> Shape) einen
eigenen Stil, der:
  * Alle Flächen in einer Farbe Ihrer Wahl (und mit einer Transparenz von 50%) darstellt.
  * Alle Umrandungen in einer Farbe Ihrer Wahl darstellt.
  * Alle Flächen mit dem Namen des Bundesstaats (lesbar!) darstellt.
    * Passen Sie den Stil so an, dass die Beschriftung erst ab einem Maßstab von > 100000 gerendert wird!
  * Alle Flächen nach Bevölkerunganzahl einfärben!


![Eigener GeoServer-Style](../assets/style1.png)
