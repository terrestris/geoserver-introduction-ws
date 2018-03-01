# Vektordatenquellen


## Shapefile

Aufgabe:

1. Legen Sie einen neuen Datenspeicher an, über den eine Shapefile veröffentlicht
werden kann. Wählen Sie einen beliebigen (Shape-)Datensatz aus dem Verzeichnis
`data_dir/data` (Dort states wählen!). Note: `home/user/data` geht nicht, wegen fehlenden Berechtigungen.

2. Veröffentlichen Sie die Shapefile über den GeoServer!

3. Öffnen Sie den neu angelegen Layer in der Layer-Vorschau!

## PostGIS

Aufgabe:

1. Legen Sie einen neuen Datenspeicher an, über den eine Tabelle einer PostgreSQL/PostGIS Tabelle veröffentlicht
werden kann. Nutzen Sie hierzu die folgenden Verbindungsparameter:

  * host: <code>localhost</code>
  * port: <code>5432</code>
  * database: <code>natural_earth2</code>
  * schema: <code>public</code>
  * user: <code>user</code>
  * passwd: <code>user</code>

2. Veröffentlichen Sie eine Tabelle Ihrer Wahl über den GeoServer! Bitte geben Sie als Standard-Ausgabe SRS `EPSG:54009` an.

3. Öffnen Sie den neu angelegen Layer in der Layer-Vorschau!

## WFS

Aufgabe:

1. Legen Sie einen neuen Datenspeicher an, über den ein bereits existierender WFS
über den GeoServer kaskadiert veröffentlicht werden kann. Nutzen Sie hierfür z.B.
den folgenden Dienst: https://www.wfs.nrw.de/geobasis/wfs_nw_dvg?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetCapabilities

2. Veröffentlichen Sie einen Dienst Ihrer Wahl über den GeoServer!

3. Öffnen Sie den neu angelegen Layer in der Layer-Vorschau!
