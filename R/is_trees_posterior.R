#' Determines if the input is a BEAST2 posterior,
#' as parsed by parse_beast_trees
#' @param x the input
#' @return TRUE or FALSE
#' @author Richèl J.C. Bilderbeek
#' @export
is_trees_posterior <- function(x) {
  class(x) == "multiPhylo"
}
