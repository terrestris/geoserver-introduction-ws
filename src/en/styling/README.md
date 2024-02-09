# Styling

## Introduction to SLD

The previous chapters have already made it clear that you can add your own styles to the geodata. GeoServer offers various style formats for this purpose: SLD, CSS, YSLD and MBStyle.

[SLD](https://docs.geoserver.org/stable/en/user/styling/sld/reference/index.html#sld-reference) stands for "Styled Layer Descriptor" and is a standard developed by the Open Geospatial Consortium ([OGC](https://www.ogc.org/)). It is an XML-based schema that is used to describe and standardize the visual representation of geodata in geographic information systems (GIS).

SLD allows users to specify how geographic data should be displayed on maps. The schema provides options for defining styles for different types of geospatial data, including **points**, **lines**, **polygons** and **raster data**. SLD allows you to specify **colors**, **transparency**, **line widths**, **fill patterns** and other visual properties.

GeoServer uses SLD as one of the [main formats](https://docs.geoserver.org/latest/en/user/styling/sld/introduction.html) for defining styles. By using SLD, the representation of geodata can be standardized and made interoperable, regardless of the GIS software or platform used.

## SLD Key Elements

The use of XML-based SLD documents enables fine-grained control over the styling of geometries such as points, lines and polygons. The layer styles are defined using various key components:

- **XML-based style definition:** SLD uses XML (eXtensible Markup Language) as a syntax to specify style information. This enables a clear and structured representation of the desired presentation of geodata.

- **Layer style mapping:** The SLD concept allows style definitions to be mapped to specific GeoServer layers (also known as feature types). Each layer can have an individual appearance, which is defined by a corresponding SLD document.

- **Layer style hierarchy:** Different styles can be defined for the same layer within an SLD document. This enables a hierarchical structure of styles, allowing different styles to be applied based on conditions or scales.

- **Symbolizers:** At the core of the SLD concept are symbolizers that define how different types of geodata (points, lines, polygons, rasters) should be represented. Symbolizers include properties such as color, line thickness (stroke) and fill to shape the visual appearance.

- **Rules and filters:** SLD allows the definition of rules that determine under which conditions certain styles should be applied. Filters can be used to control the selection of rules to be applied based on the properties of the geodata.

- **Zoom-dependent styling:** GeoServer supports zoom-dependent styling, where different styles can be applied depending on the zoom level. This allows detailed control of the appearance at different scales.

Overall, the SLD concept in GeoServer provides a flexible and powerful method for defining and customizing the visual appearance of geospatial data, allowing users to precisely control the appearance of their maps and layers.


## Supported Data Formats

GeoServer can style various data types using the Styled Layer Descriptor (SLD) format. A selection of the supported data types is listed here:

- **Points:** Allows the styling of individual points on the map. This can be useful to emphasize locations of cities, points of interest or other individual objects.

- **Lines:** Allows you to define styles for lines, such as roads, rivers or other linear features.

- **Polygons:** Styles surfaces, such as country borders, administrative areas or other polygonal geodata.

- **Raster data:** Stylization of raster data, such as elevation maps or aerial images, where different colors, transparency and other visual properties can be defined.

- **Text labels:** Allows the addition of text labels to specific points, lines or polygons on the map.

- **Complex data:** SLD can also be used for complex geodata structures that combine multiple geometry types or require specialized geometry operations.

The possibilities also depend on the capabilities and extensions of the GeoServer. It is important to check the [GeoServer documentation](https://docs.geoserver.org/stable/en/user/styling/sld/index.html) and the specific versions of the supported SLD functions to ensure that the desired data types and styles are supported.

**Tasks:**

A detailed description of all functionalities as well as some example SLDs can be found in the [GeoServer User Manual](https://docs.geoserver.org/stable/en/user/styling/sld/index.html). Try to solve the following tasks with the help that manual.

1. Define your own style for the States Layer ([see task Vector -> Shape]((../data/vector/README.md#shapefile)), which:
  - All surfaces in a color of your choice (and with a transparency of 50%).
  - All outlines in a color of your choice.
  - Displays all areas with the name of the state.

2. Customize the labeling style so that the labeling is only drawn at a scale of > 10,000,000.

3. Bonus: Have all states colored according to their population. Select your own class boundaries for this.

![Eigener GeoServer-Style](../assets/style1.png)

**Results:**
  * [Task 1](../assets/style-example-1.sld)
  * [Task 2](../assets/style-example-2.sld)
  * [Task 3 (Option A)](../assets/style-example-3a.sld)
  * [Task 3 (Option B)](../assets/style-example-3b.sld)
