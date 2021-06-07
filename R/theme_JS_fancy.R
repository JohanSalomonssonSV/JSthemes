##########
#' Theme JS fancy, which is built on Ricardo Bion's code for ggtech
#' @importFrom ggplot2 theme_classic theme element_text element_blank element_line element_rect update_geom_defaults
#' @export theme_JS_fancy
#' @name theme_JS_fancy
#' @title JS theme for ggplot2
#' @return A theme element
#' @param base_size base_size


theme_JS_fancy <- function(base_size=2.5) {
  # Generate the colors for the chart procedurally with RColorBrewer
  #palette <- RColorBrewer::brewer.pal("Greys", n=9)
  color.background = "#002b36"#"#252a32"#121212"#1e1e1e" #"#2C2C2C"#palette[2]
  color.grid.major = "grey20"#e0e0e0"#palette[3]
  color.axis.text = "#FCFCE7"#palette[6]
  color.axis.title = "#FCFCE7"#palette[7]
  color.title = "#31b09e"#"#FCFCE7"
  color.subtitle = "#617a89"#"#FCFCE7"

  grid_col <- axis_col <- "#333333"
  def_fore <- "#57c1f1"

  ggplot2::update_geom_defaults("point", list(colour = def_fore))
  ggplot2::update_geom_defaults("line", list(colour = def_fore))
  ggplot2::update_geom_defaults("area", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("rect", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("density", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("bar", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("col", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("text", list(colour = def_fore))

  # Begin construction of chart
  theme_bw(base_size= base_size * 9) +

    # Set the entire chart region to a light gray color
    theme(panel.background=element_rect(fill=color.background, color=color.background)) +
    theme(plot.background=element_rect(fill=color.background, color=color.background)) +
    theme(panel.border=element_rect(color=color.background)) +

    # Format the grid
    theme(panel.grid.major=element_line(color=color.grid.major,size=.1)) +
    theme(panel.grid.minor=element_blank()) +
    #theme(panel.grid.minor=element_line(color=color.grid.major, size=0.15))
    theme(axis.ticks=element_blank()) +

    # Format the legend, but hide by default
    #theme(legend.position="none") +
    theme(legend.background = element_rect(fill=color.background)) +
    #theme(legend.text = element_text(size=1.2 * 7,color=color.axis.title)) +
    theme(legend.text = element_text(size= base_size * 7,color=color.axis.title)) +
    theme(legend.title=element_blank()) +

    # Set title and axis labels, and format these and tick marks
    theme(plot.subtitle=element_text(color=color.subtitle, size=15, vjust=1.25)) +
    theme(axis.text.x=element_text(size=base_size * 6,color=color.axis.text)) +
    theme(axis.text.y=element_text(size=base_size * 6,color=color.axis.text)) +
    theme(axis.title.x=element_text(size=base_size * 7,color=color.axis.title, vjust=0)) +
    theme(axis.title.y=element_text(size=base_size * 7,color=color.axis.title, vjust=1.25)) +

    # Plot margins
    theme(plot.margin = grid::unit(c(0.35, 0.2, 0.3, 0.35), "cm")) +
    theme(text=element_text(size=base_size*9, family="Helvetica Neue Bold")) +
    theme(plot.title=element_text(color=color.title, size=25, vjust=1.25, family="Helvetica Neue Bold"))+
    theme(legend.key = element_rect(fill = NA))


}
