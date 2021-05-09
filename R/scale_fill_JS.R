##########
#' JS scale fill, which is built on Ricardo Bion's code for ggtech
#'
#' @export
#' @name scale_fill_JS
#' @title JS scale fill for ggplot2
#' @examples
#' scale_fill_JS(theme="JS")


scale_fill_JS <- function(theme="JS", tech_key = list(
  JS=c("#BDB76B","#556B2F","#F4A460","#FFFACD","#7FFFD4"),
  Bright=c("#FF0000","#00FF00","#FFFF00","#00FFFF","#FF00FF","#FF00FF")
)) {

  scale_fill_manual(values=tech_key[[theme]])

}
