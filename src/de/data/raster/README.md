# Rasterdatenquellen

## GeoTIFF

**Aufgabe:**

Das GeoTIFF ist ein gängiges Rasterdaten-Format, da es sich aufgrund seiner verlustfreien Speicherung gut zur Verarbeitung
von Geodaten eignet. Zusätzlich zum TIFF-Bildformat enthält das GeoTIFF Koordinaten zur Georeferenzierung und Informationen
zur verwendeten Kartenprojektion.

1. Legen Sie einen neuen Datenspeicher an, über den ein GeoTIFF über den GeoServer
veröffentlicht werden kann. Nutzen Sie hierfür `data/sf/sfdem.tiff`.

2. Veröffentlichen Sie dieses GeoTIFF über den GeoServer! Unter dem Reiter `Publishing` und weiter `WMS Settings` lassen sich
vorgefertigte Layer-Stile auswählen. Bei dem GeoTIFF handelt es sich um ein digitales Höhenmodell (DEM) aus South Dakota.
Wählen Sie daher den Stil `dem` für diesen Layer.

3. Öffnen Sie den neu angelegen Layer in der Layer-Vorschau!

## ImageMosaic

**Aufgabe:**

Ein Datenspeicher der Art ImageMosaic bietet die Möglichkeit mehrere georeferenzierte Rasterdaten zu einem Mosaik zusammenzufügen.
Somit können beispielsweise mehrere nebeneinander liegende Satellitenaufnahmen als ein zusammenhängendes Raster veröffentlicht werden.

1. Legen Sie einen neuen Datenspeicher an, über den ein ImageMosaic über den GeoServer
veröffentlicht werden kann. Nutzen Sie hierfür `coverages/mosaic_sample`.

2. Veröffentlichen Sie dieses Mosaik über den GeoServer!

3. Öffnen Sie den neu angelegen Layer in der Layer-Vorschau!

![Mosaik aus mehreren Satellitenaufnahmen](../../assets/raster2.png)

## WMS

**Aufgabe:**

Das Kaskadieren eines externen WMS-Dienstes zu GeoServer kann in vielen Situationen äußerst nützlich sein, um diesen z.B. über integrierte GeoServer Methoden zu cachen (GeoWebCache, GWC).

1. Legen Sie einen neuen Datenspeicher an, über den ein bereits existierender WMS
über den GeoServer kaskadiert veröffentlicht werden kann. Nutzen Sie hierfür z.B.
den folgenden Dienst: https://www.wms.nrw.de/geobasis/wms_nw_dgm-schummerung

2. Veröffentlichen Sie einen Dienst Ihrer Wahl über den GeoServer!

3. Öffnen Sie den neu angelegen Layer in der Layer-Vorschau!

![Hochauflösendes DGM-Relief von Bonn (GeoBasis NRW 2017)](../../assets/raster3.png)
