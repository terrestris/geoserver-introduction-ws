# Vektordatenquellen

## Shapefile

Das Shapefile-Format, entwickelt von der Firma *ESRI*, ist das am weitesten verbreitete Vektorformat in der GIS-Welt.
Shapefiles (auch Shapes) werden sowohl von proprietären als auch von OpenSource Desktop-GIS unterstützt und sind somit
Industriestandard geworden.

**Aufgabe:**

1. Legen Sie einen neuen Datenspeicher an, über den eine Shapefile veröffentlicht werden kann. Wählen Sie `us_states`
als Namen und wählen Sie anschließend das Shapefile *states.shp* aus dem Verzeichnis `data_dir/data/shapefiles`.

2. Veröffentlichen Sie das Shapefile über den GeoServer. Hierzu werden Informationen zum Räumlichen Bezugssystem (SRS)
benötigt, in dem GeoServer die Geodaten veröffentlichen soll. Tragen Sie `EPSG:4326` in das Feld *Declared SRS* ein,
damit der Layer im WGS 84 Referenzsystem veröffentlicht wird. Zudem muss die BoundingBox angegeben werden, die sich das
per Klick auf **Compute from data** und **Compute from native bounds** automatisch berechnen lässt.

3. Öffnen Sie den neu angelegen Layer in der Layer-Vorschau als OpenLayers "Format" und schauen Sie das Ergebnis an.

![Ihr erstes mit GeoServer veröffentlichtes Shapefile](../../assets/vector1.png)

## PostGIS

PostGIS ist eine räumliche Erweiterung für das populäre objekt-relationale OpenSource Datenbanksystem PostgreSQL.
Die Erweiterung ermöglicht es räumliche Daten per SQL abzufragen und bietet zudem eine Vielzahl an Möglichkeiten
zur Bearbeitung von Geodaten. Auf OSGeoLive ist das Datenbanksystem bereits installiert und mit einer Test-Datenbank
eingerichtet.

**Aufgabe:**

1. Legen Sie einen neuen Datenspeicher an, über den eine Tabelle einer PostgreSQL/PostGIS Tabelle veröffentlicht
werden kann. Nutzen Sie hierzu die folgenden Verbindungsparameter:

  * host: <code>localhost</code>
  * port: <code>5432</code>
  * database: <code>natural_earth2</code>
  * schema: <code>public</code>
  * user: <code>user</code>
  * passwd: <code>user</code>

  Nun haben Sie erfolgreich eine Verbindung zu einer PostGIS Datenbank aufgebaut, die Geodaten aus dem *Natural Earth*
  Datensatz enthält.

2. Veröffentlichen Sie eine Tabelle Ihrer Wahl über den GeoServer! Bitte geben Sie als Standard-Ausgabe SRS `EPSG:54009` an.

3. Öffnen Sie den neu angelegten Layer in der Layer-Vorschau!

## WFS

GeoServer bietet auch die Möglichkeit entfernte Web-Services als Quelle für Datenspeicher zu nehmen.
Ein WFS (Web Feature Service) bietet Internet-gestützten Zugriff auf Vektordaten. Neben dem *Basis WFS*, der nur-lesenden
Zugriff ermöglicht, bietet der *Transaction WFS* auch einen schreibenden Zugriff auf die Daten an.

**Aufgabe:**

1. Legen Sie einen neuen Datenspeicher an, über den ein bereits existierender WFS
über den GeoServer kaskadiert veröffentlicht werden kann. Nutzen Sie hierfür z.B.
den folgenden Dienst: https://www.wfs.nrw.de/geobasis/wfs_nw_dvg?SERVICE=WFS&VERSION=1.1.0&REQUEST=GetCapabilities

2. Veröffentlichen Sie einen Dienst Ihrer Wahl über den GeoServer!

3. Öffnen Sie den neu angelegen Layer in der Layer-Vorschau!

4. Falls die Darstellung mit OpenLayers nicht funktioniert, prüfen Sie die Einstellungen des Layers im Reiter `Publishing`.
GeoServer ist nicht immer in der Lage den passenden Stil für die Geodaten automatisch zu erkennen. Falls der *Default Style*
auf *generic* voreingestellt ist, ändern sie diesen in *Polygon*, *Point* oder *Line* (ja nach Art der Geodaten des WFS).
