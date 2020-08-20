#' Download OSM data from geofabrik
#'
#' @description \code{\link{get_osm}} download osm data from geofabrik. Instead
#' of other services, this function relies only on direct links. Just that.
#'
#' @param region Region of interest, see \code{\link{urlgeo}}
#' @param type "pbf", "shp" or "osm"
#' @param file a character string (or vector, see url) with the name where the downloaded file is saved.
#' @param quiet If TRUE, suppress status messages (if any), and the progress bar.
#' @return Download a file
#' @importFrom utils download.file
#' @note all regions were transformed with  iconv to "ASCII//TRANSLIT"
#' @export
#' @examples \donttest{
#' head(urlgeo)
#' get_osm("Sao Tome and Principe")
#' get_osm("Sao Tome and Principe", "pbf")
#' get_osm("Sao Tome and Principe", "osm")
#' }
get_osm <- function(region,
                    type = "shp",
                    file = tempfile(),
                    quiet = FALSE) {
  URL <- urlgeo[urlgeo$x == region,
               ifelse(type == "pbf", "URL_OSMPBF",
                      ifelse(type == "shp", "URL_SHP",
                             "URL_OSMBZ2"))][1] #if repeated URL
  dfile <- ifelse(type == "pbf", paste0(file, ".osm.pbf"),
                  ifelse(type == "shp", paste0(file, ".shp.zip"),
                         paste0(file, ".osm.bz2")))
download.file(url = URL,
              destfile = dfile,
              quiet = quiet)
message("file at " , dfile)
  }
