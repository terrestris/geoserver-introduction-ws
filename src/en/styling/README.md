# Styling

## Introduction to SLD

In the preceding chapters it was already mentioned that own styles can be added to the geodata.
For this GeoServer offers different style formats: *SLD, CSS, YSLD and MBStyle*.
SLD is an abbreviation for *Styled Layer Descriptor* and is an OGC standard. Try to solve the following tasks with the help of [GeoServer User Manuals](https://docs.geoserver.org/stable/en/user/styling/sld/index.html).

**Tasks:**

1. Define an own style for the States layer (see Task Vector -> Shape), which:
  * displays all surfaces in a color of your choice (and with a transparency of 50%)
  * displays all borders in a color of your choice
  * represents all areas with the name of the state.

2. Adjust the label style so the label is only drawn from a scale of > 10,000,000.

3. Bonus: Color all states according to its population size. You can choose your own class limits.

![Own GeoServer-Style](../assets/style1.png)

Lösungen:
  * [Task 1](../assets/style-example-1.sld)
  * [Task 2](../assets/style-example-2.sld)
  * [Task 3 (Possibility A)](../assets/style-example-3a.sld)
  * [Task 3 (Possibility B)](../assets/style-example-3b.sld)
