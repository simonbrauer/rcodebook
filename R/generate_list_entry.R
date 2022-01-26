#' Generate navigation item for variable
#'
#' @param var variable name
#'
#' @return string
#' @export
#'
#' @examples
generate_list_entry <- function(var){
  var %>%
    codebook::tag_surround('a', href = stringr::str_c('#', var, '_entry')) %>%
    codebook::tag_surround('li', class = 'var_list_entry')
}
