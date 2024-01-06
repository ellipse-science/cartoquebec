#' Apply a clean map theme to ggplot objects
#'
#' This theme removes axes, ticks, and text, providing a clean map view.
#' It optionally includes a legend at the bottom if specified.
#'
#' @param legend logical; if TRUE, includes the legend at the bottom
#' @return A ggplot2 theme
#' @export
#' @examples
#' ggplot(data) +
#'   geom_sf() +
#'   theme_map_minimal(legend = TRUE)
theme_map_minimal <- function(legend = FALSE, background_color = NULL) {
  theme_minimal() +
    theme(
      axis.title = element_blank(),
      axis.text = element_blank(),
      axis.ticks = element_blank(),
      axis.line = element_blank(),
      panel.background = element_rect(fill = background_color, color = NA),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      panel.border = element_blank(),
      plot.margin = if (legend) ggplot2::unit(c(0, 0, 5, 0), units = "cm") else ggplot2::unit(c(2, 2, 2, 2), units = "cm"),
      legend.position = if (legend) "bottom" else "none"
    )
}
