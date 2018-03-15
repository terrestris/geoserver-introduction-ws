### Einstellungen

#### Global

Unter dem Dialog **Globale Einstellungen** finden sich folgende relevante
Konfigurationsmöglichkeiten, die unter Umständen für Entwicklungs- oder
Produktionsbetrieb angepasst werden sollten:

* `Ausführliche Meldungen`: Ist die Checkbox gesetzt, sind die XML-Antworten des
  GeoServers möglichst lesbar (durch Leerzeichen, Zeilenumbrüche etc.). Da hierdurch
  größere Dateien verursacht werden, ist diese Einstellung nur für den Testbetrieb
  ratsam.
* `Ausführliche Fehlerausgaben`: Ist die Checkbox gesetzt, wird das volle Java Stacktrace
  in die Log-Datei geschrieben. Da hierdurch eine größere Log-Dateien verursacht werden,
  ist diese Einstellung nur für das Debuggen ratsam.
* `Zeichensatz`: Welche Zeichenkodierung soll der GeoServer verwenden? Der Standardwert von
  UTF-8 sollte nicht geändert werden, um Kodierungsfehler in den Antworten des
  GeoServers zu vermeiden.
* `Proxy URL`: Ist der GeoServer über einen reverse-proxy (http://httpd.apache.org/docs/2.2/mod/mod_proxy.html)
  erreichbar gemacht worden, kann in diesem Feld die Adresse des Proxy eingetragen werden.
  Im Normalfall ist dieses Feld auf einen leeren String zu setzen.
* `Profil für die Protokollierung`: Der GeoServer besitzt per default fünf Protokollprofile,
  die eine unterschiedliche Sensitivität der Log-Ausgabe besitzen. Die Wahl ist
  immer abhängig von der Umgebung (Entwicklung oder Produktion):
    * `DEFAULT_LOGGING`: Mittleres Protokolllevel auf fast allen Modulebenen des GeoServers.
    * `GEOSERVER_DEVELOPER_LOGGING`: Ausführliche Protokollierung auf Ebene des
      Moduls GeoServer. Nur sinnvoll, wenn der GeoServer debuggt wird.
    * `GEOTOOLS_DEVELOPER_LOGGING`: Ausführliche Protokollierung auf Ebene des
      Moduls GeoTools. Diese Auswahl kann nützlich sein, wenn überprüft werden
      soll, welche SQL Statements (z.B. bei einer GetFeature Abfrage) an die
      Datenbank gesendet werden.
    * `PRODUCTION_LOGGING`: Minimale Protokollierung, nur Fehler werden ausgegeben.
      Diese Einstellung ist für den Produktiveinsatz zu wählen.
    * `VERBOSE_LOGGING`: Ausführliche Protokollierung auf allen Ebenen des GeoServes.
      Nur sinnvoll, wenn der GeoServer debuggt wird.
* `Speicherort für Protkolldatei`: Angabe des Speicherorts für die Logging-Dateien
relativ zum GeoServer data-Verzeichnis (meist /usr/share/tomcat7/webapps/geoserver/data/).
Der Pfad ist in aller Regel auf dem Standard von logs/geoserver.log zu belassen.

### Sicherheit

In diesem Menüblock befinden sich sämtliche Einstellungsmöglichkeiten zur Sicherheit des Geoservers.
Neben den üblichen Einstellungen wie z.B. Usermanagement und Passworterverwaltung, gibt es die Möglichkeit
den Zugriff auf Datenspeicher für bestimmte User einzuschränken.

**Aufgabe:**

1. Bitte ändern Sie das Standard-Passwort für den Benutzer `admin` von `geoserver` zu `fossgis`.
