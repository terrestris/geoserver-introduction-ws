# Styling

## Einführung in SLD

In den vorangehenden Kapiteln wurde bereits deutlich, dass den Geodaten eigene Stile hinzugefügt werden können.
Hierzu bietet GeoServer verschiedene Style-Formate an: *SLD, CSS, YSLD und MBStyle*.

[SLD](https://docs.geoserver.org/stable/en/user/styling/sld/reference/index.html#sld-reference) steht für "Styled Layer Descriptor" und ist ein Standard, der von der Open Geospatial Consortium ([OGC](https://www.ogc.org/)) entwickelt wurde. Es handelt sich dabei um ein XML-basiertes Schema, das dazu dient, die visuelle Darstellung von Geodaten in Geoinformationssystemen (GIS) zu beschreiben und zu standardisieren.

Mit SLD können Benutzer festlegen, wie geographische Daten auf Karten dargestellt werden sollen. Das Schema bietet Möglichkeiten zur Definition von Stilen für verschiedene Arten von Geodaten, einschließlich **Punkte**, **Linien**, **Polygone** und **Rasterdaten**. SLD ermöglicht es, **Farben**, **Transparenz**, **Linienstärken**, **Füllmuster** und andere visuelle Eigenschaften festzulegen.

Der GeoServer verwendet SLD als eines der [Hauptformate](https://docs.geoserver.org/latest/en/user/styling/sld/introduction.html) für die Definition von Stilen. Durch die Verwendung von SLD kann die Darstellung von Geodaten standardisiert und interoperabel gestaltet werden, unabhängig von der GIS-Software oder der verwendeten Plattform.

## SLD Schlüsselelemente

Durch die Verwendung von XML-basierten SLD-Dokumenten wird eine feingranulare Kontrolle über das Styling von Geometrien wie Punkten, Linien und Polygonen ermöglicht. Die Layerstile werden anhand von verschiedenen Schlüsselkomponenten definiert:

- **XML-basierte Stildefinition:** SLD verwendet XML (eXtensible Markup Language) als Syntax, um Stilinformationen zu spezifizieren. Dies ermöglicht eine klare und strukturierte Darstellung der gewünschten Darstellung von Geodaten.

- **Layer-Stilzuordnung:** Das SLD-Konzept ermöglicht die Zuordnung von Stildefinitionen zu bestimmten GeoServer-Layern (auch als Feature-Typen bezeichnet). Jeder Layer kann ein individuelles Erscheinungsbild haben, das durch ein entsprechendes SLD-Dokument festgelegt wird.

- **Layer-Stilhierarchie:** Innerhalb eines SLD-Dokuments können verschiedene Stile für denselben Layer definiert werden. Dies ermöglicht eine hierarchische Struktur von Stilen, wodurch verschiedene Stile auf der Grundlage von Bedingungen oder Maßstäben angewendet werden können.

- **Symbolizer:** Der Kern des SLD-Konzepts sind Symbolizer, die festlegen, wie verschiedene Geodatentypen (Punkte, Linien, Polygone, Raster) dargestellt werden sollen. Symbolizer umfassen unter anderem Eigenschaften wie Farbe, Linienstärke und Füllung, um das visuelle Erscheinungsbild zu gestalten.

- **Regeln und Filter:** SLD ermöglicht die Definition von Regeln, die festlegen, unter welchen Bedingungen bestimmte Stile angewendet werden sollen. Filter können verwendet werden, um die Auswahl der anzuwendenden Regeln basierend auf den Eigenschaften der Geodaten zu steuern.

- **Zoom-abhängiges Styling:** GeoServer unterstützt zoomabhängiges Styling, bei dem verschiedene Stile je nach Zoomstufe angewendet werden können. Dies ermöglicht eine detaillierte Steuerung des Erscheinungsbilds in verschiedenen Maßstäben.

Insgesamt bietet das SLD-Konzept im GeoServer eine flexible und leistungsfähige Methode zur Definition und Anpassung des visuellen Erscheinungsbilds von Geodaten, wodurch Benutzer die Darstellung ihrer Karten und Layer präzise steuern können.


## Styling von unterschiedlichen Datentypen

Der GeoServer kann verschiedene Datentypen mit dem Styled Layer Descriptor (SLD)-Format stylen. Hier ist eine Auswahl der unterstützten Datentypen aufgelistet:

- **Punktdaten:** Erlaubt die Gestaltung von einzelnen Punkten auf der Karte. Dies kann nützlich sein, um Standorte von Städten, Interessenspunkten oder anderen einzelnen Objekten zu betonen.

- **Liniendaten:** Ermöglicht die Definition von Stilen für Linien, wie Straßen, Flüsse oder andere lineare Features.

- **Polygonale Daten:** Gestaltet Flächen, wie Ländergrenzen, administrative Gebiete oder andere polygonale Geodaten.

- **Rasterdaten:** Stilisierung von Rasterdaten, wie Höhenkarten oder Luftbildern, wobei verschiedene Farben, Transparenz und andere visuelle Eigenschaften festgelegt werden können.

- **Textbeschriftungen:** Erlaubt die Hinzufügung von Textbeschriftungen zu bestimmten Punkten, Linien oder Polygonen auf der Karte.

- **Komplexe Daten:** SLD kann auch für komplexe Geodatenstrukturen verwendet werden, die mehrere Geometrietypen kombinieren oder spezielle Geometrieoperationen erfordern.

Die Möglichkeiten hängen auch von den Fähigkeiten und Erweiterungen des GeoServers ab. Es ist wichtig, die Dokumentation des GeoServers und die spezifischen Versionen der unterstützten SLD-Funktionen zu überprüfen, um sicherzustellen, dass die gewünschten Datentypen und Stile unterstützt werden.

**Aufgaben:**

Eine detaillierte Beschreibung aller Funktionalitäten, sowie einige Beispiel-SLD's sind im [GeoServer User Manual](https://docs.geoserver.org/stable/en/user/styling/sld/index.html) zu finden. Versuchen Sie die folgenden Aufgaben mit Hilfe des Handbuchs zu lösen.

1. Definieren Sie für den States Layer (siehe [Aufgabe Vector -> Shape](../data/vector/README.md#shapefile)) einen
eigenen Stil, der:
  * Alle Flächen in einer Farbe Ihrer Wahl (und mit einer Transparenz von 50%) darstellt.
  * Alle Umrandungen in einer Farbe Ihrer Wahl darstellt.
  * Alle Flächen mit dem Namen des Bundesstaats darstellt.

2. Passen Sie den Beschriftungsstil so an, dass die Beschriftung erst ab einem Maßstab von > 10.000.000 gezeichnet wird.

3. Bonus: Lassen Sie alle Staaten in Abhängigkeit ihrer Bevölkerungsanzahl einfärben. Wählen Sie hierfür eigene Klassengrenzen.

![Eigener GeoServer-Style](../assets/style1.png)

Lösungen:
  * <a href="../assets/style-example-1.sld" target="_blank">Aufgabe 1</a>
  * <a href="../assets/style-example-2.sld" target="_blank">Aufgabe 2</a>
  * <a href="../assets/style-example-3a.sld" target="_blank">Aufgabe 3 (Möglichkeit A)</a>
  * <a href="../assets/style-example-3b.sld" target="_blank">Aufgabe 3 (Möglichkeit B)</a>
