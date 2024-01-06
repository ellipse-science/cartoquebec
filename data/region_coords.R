#' Geographic Coordinates for Various Regions
#'
#' This dataset contains predefined sets of geographic coordinates for various regions.
#' These coordinates are used to define the view limits in mapping functions such as zoom_map.
#'
#' @format A named list where each element is a vector containing the minimum and
#' maximum longitudes (`long_min`, `long_max`) and latitudes (`lat_min`, `lat_max`)
#' for a specific region. The regions currently included are a general region
#' (covering a broad area), Montreal (mtl), Quebec City (qc), and the Montreal
#' Metropolitan Region (rmr).
#' @examples
#' region_coords$mtl # Returns coordinates for Montreal
#' region_coords$qc # Returns coordinates for Quebec City
#' @export
region_coords <- list(
  "region" = c("long_min" = -79.8, "long_max" = -65, "lat_min" = 45.0, "lat_max" = 52.5),
  "mtl" = c("long_min" = -74, "long_max" = -73.45, "lat_min" = 45.3975, "lat_max" = 45.70),
  "qc" = c("long_min" = -72, "long_max" = -70.7, "lat_min" = 46.6, "lat_max" = 47.28),
  "rmr" = c("long_min" = -74.1, "long_max" = -73.2, "lat_min" = 45.25, "lat_max" = 45.88)
)
