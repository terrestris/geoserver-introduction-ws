### Services

#### WFS

Das Formular Web Feature Service beinhaltet globale Einstellungen zu allen WFS
des ausgewählten Arbeitsbereichs.

* `Service Metadaten`: Die Angaben im Bereich Service Metadaten sind relevant für die
  Capabilities des Kartenservers und sind an die gegebenen Umstände anzupassen
  (Ist z.B. eine Zugriffsbeschränkung der Dienste vorhanden?, Welche Schlüsselworte sind vergeben?).
  Für eine Übersicht aller Felder siehe auch http://docs.geoserver.org/latest/en/user/webadmin/services/WCS.html#service-metadata.
  Wichtiger Hinweis: Ist die Checkbox WFS aktiv nicht bestätigt, sind keine WFS Abfragen möglich.
* `Max. Anzahl von Features`: Soll die maximale Anzahl der über ein WFS GetFeature
  Request ausgegeben Features begrenzt werden, kann diese Anzahl in dem Feld erfolgen.
* `Dienstgüte`: Der GeoServers implementiert eine voll transaktionale WFS Schnittstelle
  (WFS-T). Dies bedeutet, dass über den GeoServer Features sowohl abgerufen
  (WFS GetFeature) als auch editiert (CREATE, UPDATE, DELETE) werden können (WFS Transaction).
  Die Checkboxen unter Dienstgüte stehen für:
    * `Basis`: Features können über die WFS Schnittstelle ausschließlich abgefragt werden
      (GetCapabilities, DescribeFeatureType, GetFeature Operationen möglich).
    * `Transaktional`: Features können über die WFS Schnittstelle erstellt, geändert und
      gelöscht werden (zusätzlich zu Basis ist die Operation Transaction möglich).
    * `Vollständig`: Neben den transaktionen Schnittstellen ist die LockFeature (Sperren
      eines Features bei Bearbeitung ohne das eine weitere Operation das Feature ändert) Operation erlaubt.

#### WMS

Das Formular Web Map Service beinhaltet globale Einstellungen zu allen WMS des
ausgewählten Arbeitsbereichs.

* `Service Metadaten`: Die Angaben im Bereich Service Metadaten sind relevant für die
  Capabilities des Kartenservers und sind an die gegebenen Umstände anzupassen
  (Ist z.B. eine Zugriffsbeschränkung der Dienste vorhanden?, Welche Schlüsselworte
  sind vergeben?). Für eine Übersicht aller Felder siehe auch http://docs.geoserver.org/latest/en/user/webadmin/services/WCS.html#service-metadata.
  Wichtiger Hinweis: Ist die Checkbox WMS aktiv nicht bestätigt, sind keine WMS
  Abfragen möglich.
* `Eingeschränkte Liste der Koordinatenreferenzsysteme`: Per Default ist es möglich,
  WMS- und WFS Dienste in allen dem GeoServer zur Verfügung stehenden
  Koordinatenreferenzsystemen abzufragen. Soll die Verfügbarkeit eingeschränkt werden,
  wird eine Komma separierte Liste der EPSG-Coes in der Liste angegeben (z.B. 4326, 25833).
  Um eine maximale Kompatibilität der Dienste zu gewährleisten, empfiehlt es sich
  jedoch, alle verfügbaren Systeme anzubieten.
* `Raster Rendering Optionen`: Der GeoServer erlaubt die Auswahl von drei Rendering
  Methoden beim Zeichnen eines WMS, die sich in dem Einbezug benachbarter Zellen
  bei der Berechnung des Zellenwerts eines Rasterbildes äußern: Nächster Nachbar,
  Bilinear und Bicubic. Für einen optimale Performance sollte der Standardwert
  von Nächster Nachbar nicht geändert werden. Siehe auch: http://docs.geoserver.org/stable/en/user/webadmin/services/WMS.html#raster-rendering-options.
* `Wasserzeichen Einstellungen`: Über ein Wasserzeichen kann z.B. ein
  Copyright-Hinweis in jedes Kartenbild gezeichnet werden. Soll ein Wasserzeichen
  eingebunden werden, muss die Checkbox Aktiviere Wasserzeichen sowie ein
  entsprechende Grafikdatei ausgewählt werden. Wichtiger Hinweis: Wird ein
  Wasserzeichen in die Kartenkachel gezeichnet, erscheint diese in jeder Kachel.
  Dies resultiert bei einer Kachelung des Dienstes, d.h. der Zerlegung des angeforderten
  Kartenausschnitts in gleich große Kacheln, in eine mehrfache Aufführung des
  Wasserzeichens im aufrufenden Client.
* `PNG/JPEG Optionen`: Um den HTTP-Traffic zu minimieren, ist es möglich die Kartenkacheln
  im Ausgabeformat PNG oder JPEG zu komprimieren. Die Kompression wird über einen
  Ganzzahlenwert zwischen 0 und 100 angegeben (0 = keine Kompression, 100 = maximale Kompression).
  Der Standardwert von 25 stellt hierbei einen guten Kompromiss dar.
