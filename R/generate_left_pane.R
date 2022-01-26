#' Generate navigation pane of the codebook
#'
#' @param var_names character vector
#'
#' @return string
#' @export
#'
#' @examples
generate_left_pane <- function(var_names){
  var_names %>%
    purrr::map_chr(codebook::generate_list_entry) %>%
    stringr::str_c(collapse = '\n') %>%
    codebook::tag_surround('ul', id = 'var_list') %>%
    codebook::tag_surround('section', id = 'left_pane')
}
