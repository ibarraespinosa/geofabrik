.onAttach <- function(libname, pkgname) {
  msg <- paste0 ("Data (c) OpenStreetMap contributors,",
                 " ODbL 1.0. https://www.openstreetmap.org/copyright\n",
                 "Data from https://download.geofabrik.de/")
  packageStartupMessage (msg)
}

utils::globalVariables(c("urlgeo"))
