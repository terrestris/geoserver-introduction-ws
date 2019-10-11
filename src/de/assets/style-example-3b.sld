<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>US States</Name>
    <UserStyle>
      <Title>US States</Title>
      <FeatureTypeStyle>
        <Rule>
          <!-- https://docs.geoserver.org/stable/en/user/styling/sld/tipstricks/transformation-func.html -->
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">
                <ogc:Function name="Categorize">
                  <!-- Value to transform -->
                  <ogc:Div>
                    <ogc:PropertyName>PERSONS</ogc:PropertyName>
                    <ogc:PropertyName>LAND_KM</ogc:PropertyName>
                  </ogc:Div>
                  <!-- Output values and thresholds -->
                  <ogc:Literal>#87CEEB</ogc:Literal>
                  <ogc:Literal>20</ogc:Literal>
                  <ogc:Literal>#FFFACD</ogc:Literal>
                  <ogc:Literal>100</ogc:Literal>
                  <ogc:Literal>#F08080</ogc:Literal>
                </ogc:Function>
              </CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <MaxScaleDenominator>10000000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>STATE_NAME</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">DejaVu Sans</CssParameter>
              <CssParameter name="font-size">10</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0.0</AnchorPointY>
                </AnchorPoint>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#FFFFFF</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
