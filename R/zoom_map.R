#' Zoom into a specified geographic area on a map
#'
#' This function adjusts the map view to focus on a specific geographic area
#' defined by minimum and maximum longitudes and latitudes.
#'
#' @param long_min Minimum longitude for the map view.
#' @param long_max Maximum longitude for the map view.
#' @param lat_min Minimum latitude for the map view.
#' @param lat_max Maximum latitude for the map view.
#'
#' @return A list containing coord_sf parameters for ggplot2.
#' @export
#'
#' @examples
#' zoom_map(-74, -73.45, 45.3975, 45.70)
zoom_map <- function(long_min, long_max, lat_min, lat_max){
  list(
    coord_sf(xlim = c(long_min, long_max),
             ylim = c(lat_min, lat_max),
             expand = FALSE,
             default_crs = sf::st_crs(4326))
  )
}
