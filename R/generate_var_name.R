#' Create HTML element for variable name
#'
#' @param x vector
#'
#' @return character vector
#' @export
#'
#' @examples
generate_var_name <- function(x){
  codebook::tag_surround(x, 'h3', class = 'var_name')
}
