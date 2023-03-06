### Services

#### WFS

The Web Feature Service form contains global settings for all WFS of the selected workspace.

* `Service Metadata`: The information of Service Metadata is relevant for the
  Capabilities of the map serverdes Kartenservers and must be adapted to the given circumstances.
  (e.g. is there an access restriction for the services? Which keywords are assigned?).
  For an overview of all fields, go to https://docs.geoserver.org/stable/en/user/services/wfs/webadmin.html#service-metadata.
  Important Hint: If the checkbox WFS active is not checked, no WFS queries are possible.
* `Max. number of features`: If you want to limit the output of features via a WFS GetFeature Request, the maximum number of features can be set here.
* `Quality of service`: The GeoServer implements a fully transactional WFS interface (WFS-T). DThis means that features either can be both accessed
  (WFS GetFeature) and edited (CREATE, UPDATE, DELETE - WFS Transaction).
  The checkboxes under Quality of Service offer the following options:
    * `Base`: Features can only be queried via the WFS interface (GetCapabilities, DescribeFeatureType, GetFeature are allowed).
    * `Transactional`: eatures can be created, modified and deleted via the WFS interface (WFS - Transaction is also possible in addition to the base features).
    * `Complete`: NBeside the transaction interfaces LockFeature is allowed (Locking a feature when editing without another operation changing the feature).

#### WMS

The Web Map Service form contains global settings for all WMS of the selected workspace.

* `Service Metadaten`: ervice Metadata`: The information of Service Metadata is relevant for the
  Capabilities of the map serverdes Kartenservers and must be adapted to the given circumstances.
  (e.g. is there an access restriction for the services? Which keywords are assigned?).
  For an overview of all fields, go to https://docs.geoserver.org/stable/en/user/services/wms/webadmin.html#service-metadata.
  Important Hint: If the checkbox WMS active is not checked, no WMS queries are possible.
* `Restricted list of coordinate reference systems`: By default it is possible to query WMS and WFS services in all coordinate reference systems available on GeoServer. If the availability should be restricted, a comma separated list of the EPSG-Codes is determined in the list (e.g. 4326, 25833).
  In order to ensure maximum compatibility of the services, it is recommended to offer all available coordinate reference systems.
* `Raster Rendering Options`: The GeoServer allows the selection of three rendering methods when drawing a WMS, which are reflected in the inclusion of neighboring cells in the calculation of the cell value of a raster image: Nearest neighbour,
  bilinear und bicubic. For optimal performance, the default value of *Nearest neighbour* should not be changed. See also: https://docs.geoserver.org/stable/en/user/services/wms/webadmin.html#raster-rendering-options
* `Watermark Settings`: A watermark can be used e.g. for a Copyright notice to be drawn in each map image. If a watermark is to be integrated, the checkbox Activate watermark as well as
  a corresponding graphic file has to be selected. Important Hint: WIf a watermark is drawn in the map tile, it will appear in every tile.
  This is caused by the tiling of the service respectively the division of the requested map section into tiles of equal size, into a multiple performance of the watermark in the calling client.
* `PNG/JPEG Options`: To minimize HTTP traffic, it is possible to compress the map tiles in PNG or JPEG output format. The compression is determined by an integer value between 0 and 100. (0 = no compression, 100 = max. compression).
  The default value of 25 represents a good compromise.
  