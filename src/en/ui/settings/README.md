### Settings

#### Global

The **Global Settings** dialog contains the following relevant 
configuration options, which may need to be adapted for development or production purposes:

* `Detailed messages`: If the checkbox is set, the XML responses of GeoServer are as readable as possible (by blanks, line breaks etc.). Since this causes larger files, this setting is only advisable for test purposes.
* `Detailed error output`: If the checkbox is set, the full Java stack trace is written to the log file. This causes huge log files, so this setting is only recommended for debugging.
* `Charset`: Which character encoding should GeoServer use? The default value *UTF-8* should not be changed to avoid encoding errors in the GeoServer's responses.
* `Proxy URL`: If the GeoServer is connected via a reverse-proxy (https://httpd.apache.org/docs/2.2/mod/mod_proxy.html), the address of the proxy can be entered in this field.
  Normally this field is set to an empty string. 
* `Logging profile`: By default, GeoServer has five protocol profiles. They differ regarding their sensitivity of the log output. The choice always depends on the environment (development or production):
    * `DEFAULT_LOGGING`: Medium protocol level on almost all module levels of GeoServer.
    * `GEOSERVER_DEVELOPER_LOGGING`: Detailed logging at the GeoServer module level. Only useful if the GeoServer is debugged.
    * `GEOTOOLS_DEVELOPER_LOGGING`: Detailed logging at the GeoTools module level. This selection can be useful if you want to check which SQL statements (e.g. in a GetFeature query) are sent to the database.
    * `PRODUCTION_LOGGING`: Minimal logging, only errors are logged.
      This setting should be selected for productive use.
    * `VERBOSE_LOGGING`: Detailed logging on all levels of GeoServer.
      Only useful if GeoServer is debugged.
* `Storage location for log file`: Specifies the storage location for the logging files relative to GeoServer data directory (normally /usr/share/tomcat7/webapps/geoserver/data/).
The path is usually to be left at the default of logs/geoserver.log.

### Security

This menu item contains all possible settings for the security of GeoServer.
In addition to the usual settings like User- and password management, there is the possibility to restrict access to data storage for certain users.

**Task:**

1. Please change the default password for user `admin` from `geoserver` to `fossgis`.
