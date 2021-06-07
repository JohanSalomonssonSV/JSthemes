##########
#' JS scale fill, which is built on Ricardo Bion's code for ggtech
#' @importFrom ggplot2 scale_fill_manual
#' @export
#' @name scale_fill_JS
#' @title JS scale fill for ggplot2
#' @param theme theme JS
#' @param tech_key list of colors


scale_fill_JS <- function(theme="JS", tech_key = list(
  JS=c("#BDB76B","#556B2F","#F4A460","#FFFACD","#7FFFD4"),
  Bright=c("#FF0000","#00FF00","#FFFF00","#00FFFF","#FF00FF","#FF00FF")
)) {

  ggplot2::scale_fill_manual(values=tech_key[[theme]])

}
