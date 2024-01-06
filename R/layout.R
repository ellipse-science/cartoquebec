#' Create a Classic Map Layout for Quebec
#'
#' This function combines three map visualizations (Quebec, Montreal RMR, Quebec City)
#' into a classic layout. The Quebec map takes the larger left part, while the Montreal
#' RMR and Quebec City maps are placed side by side on the right.
#'
#' @param map_all A ggplot object representing the full Quebec map.
#' @param map_mtl A ggplot object representing the Montreal RMR map.
#' @param map_qc A ggplot object representing the Quebec City map.
#' @return A ggplot object with the combined layout.
#' @export
#' @examples
#' maps_layout_classic(map_all, map_mtl, map_qc)
maps_layout_classic <- function(map_all, map_mtl, map_rmr, map_qc) {
  layout <- "AAAABB
             AAAABB
             AAAABB"

  combined_map <- (map_all + (map_mtl / map_rmr / map_qc) +
                     patchwork::plot_layout(design = layout)) &
    ggplot2::theme(plot.margin = ggplot2::margin(0, 0, 0, 0, "mm"))

  return(combined_map)
}
