% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_osm.R
\name{get_osm}
\alias{get_osm}
\title{Download OSM data from geofabrik}
\usage{
get_osm(region, type = "shp", file = tempfile(), quiet = FALSE)
}
\arguments{
\item{region}{Region of interest, see \code{\link{urlgeo}}}

\item{type}{"pbf", "shp" or "osm"}

\item{file}{a character string (or vector, see url) with the name where the downloaded file is saved.}

\item{quiet}{If TRUE, suppress status messages (if any), and the progress bar.}
}
\value{
Download a file
}
\description{
\code{\link{get_osm}} download osm data from geofabrik. Instead
of other services, this function relies only on direct links. Just that.
}
\note{
all regions were transformed with  iconv to "ASCII//TRANSLIT"
}
\examples{
\donttest{
head(urlgeo)
get_osm("Sao Tome and Principe")
get_osm("Sao Tome and Principe", "pbf")
get_osm("Sao Tome and Principe", "osm")
}
}
