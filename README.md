
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- date: "19 de Octubre de 2016" -->

# geofabrik

Download OpenStreetMap from <https://download.geofabrik.de/>.

No external dependencies\! Pure R\!

## Install

``` r
remotes::install_github("ibarraespinosa/geofabrik")
# install.packages("geofabrik") #soon
```

## Use

``` r
head(urlgeo)
get_osm("Sao Tome and Principe")
get_osm("Sao Tome and Principe", "pbf")
get_osm("Sao Tome and Principe", "osm")
```
