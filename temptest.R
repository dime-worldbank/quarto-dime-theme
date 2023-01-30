library(sf)
library(osmdata)
library(tidyverse)

# Get DC borders
dcosmborders <- getbb("washington dc", format_out = "sf_polygon")
dcosmborders <- dcosmborders[1,] # Only main polygon

# Get big streets
streets <- getbb("washington dc") |>
  opq() |>
  add_osm_feature(key = "highway", 
                  value = c("motorway", "primary", 
                            "secondary", "tertiary")) |>
  osmdata_sf()
streets <- streets$osm_lines |>
  st_intersection(dcosmborders)

# Water polygons
water <- getbb("washington dc") |>
  opq() |>
  add_osm_feature("water", "river") |>
  osmdata_sf()
water_poly <- water$osm_polygons |>
  st_intersection(dcosmborders)
water_multipoly <- water$osm_multipolygons |>
  st_intersection(dcosmborders)

# University polygons
university <- getbb("washington dc") |>
  opq() |>
  add_osm_feature("amenity", "university") |>
  osmdata_sf()
university <- university$osm_polygons |>
  st_intersection(dcosmborders)

# Cafes
cafe <- getbb("washington dc") |>
  opq() |>
  add_osm_feature("amenity", "cafe") |>
  osmdata_sf()
cafe <- cafe$osm_points |>
  st_intersection(dcosmborders)

title <- "<span style='font-family:galada;font-size:24pt;'>**Washington, DC**</span><br><br>
<span style='font-size:11pt;'>Map of <span style='font-size:13pt; color:#D1BE9C'>University Campuses</span> and <span style='font-size:13pt; color:#EBB9DF'>Cafes</span> in<br> Washington, DC according to OSM data.</span>"

ggplot() +
  geom_sf(data = dcosmborders,
          color = "#834ba0",
          fill = "#834ba0") +
  geom_sf(
    data = streets,
    inherit.aes = FALSE,
    color = "#ce78b3",
    size = .4
  ) +
  geom_sf(
    data = water_poly,
    inherit.aes = FALSE,
    color = "#00E5E8",
    fill = "#00E5E8"
  ) +
  geom_sf(
    data = water_multipoly,
    inherit.aes = FALSE,
    color = "#00E5E8",
    fill = "#00E5E8"
  ) +
  geom_sf(
    data = university,
    inherit.aes = F,
    fill = "#D1BE9C",
    color = "#D1BE9C"
  ) +
  geom_sf(
    data = cafe,
    fill = "#EBB9DF",
    color = "#EBB9DF",
    size = 1,
    alpha = 0.75
  ) +
  scale_y_continuous(limits = c(38.79163, 38.99597)) +
  scale_x_continuous(limits = c(-77.11979, -76.90937)) +
  ggtext::geom_richtext(
    aes(x = -77.09, y = 38.855, label = title),
    color = "white",
    label.color = NA,
    fill = NA
  ) +
  labs(caption = "Map Data Source: OpenStreetMap Contributors") +
  theme_void() +
  theme(
    text = element_text(color = "white"),
    plot.caption = element_text(color = "#ad5fad", hjust = 0.95),
    plot.background = element_rect(fill = "#573b88", color = NA),
    plot.margin = margin(
      t = 10,
      b = 10,
      l = 10,
      r = 10
    )
  )


# featured image for blog post

ggplot() +
  geom_sf(data = dcosmborders,
          color = "#834ba0",
          fill = "#834ba0") +
  geom_sf(
    data = streets,
    inherit.aes = FALSE,
    color = "#ce78b3",
    size = .4
  ) +
  geom_sf(
    data = water_poly,
    inherit.aes = FALSE,
    color = "#00E5E8",
    fill = "#00E5E8"
  ) +
  geom_sf(
    data = water_multipoly,
    inherit.aes = FALSE,
    color = "#00E5E8",
    fill = "#00E5E8"
  ) +
  geom_sf(
    data = university,
    inherit.aes = F,
    fill = "#D1BE9C",
    color = "#D1BE9C"
  ) +
  geom_sf(
    data = cafe,
    fill = "#EBB9DF",
    color = "#EBB9DF",
    size = 1,
    alpha = 0.75
  ) +
  scale_y_continuous(limits = c(38.79163, 38.99597)) +
  scale_x_continuous(limits = c(-77.11979, -76.90937)) +
  theme_void() +
  theme(
    text = element_text(color = "white"),
    plot.caption = element_text(color = "#ad5fad", hjust = 0.95),
    plot.background = element_rect(fill = "#222831", color = NA),
    plot.margin = margin(
      t = 0,
      b = 0,
      l = 50,
      r = 50
    )
  )
 