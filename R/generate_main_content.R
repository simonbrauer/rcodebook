#' Generate main content with variable entries
#'
#' @param df data frame
#' @param max_rows integer
#' @param drop boolean
#'
#' @return string
#' @export
#'
#' @examples
generate_main_content <- function(df, max_rows = 20, drop = FALSE){
  purrr::map2_chr(df, colnames(df), codebook::generate_var_entry, max_rows = max_rows, drop = drop) %>%
    stringr::str_c(collapse = '\n\n') %>%
    codebook::tag_surround('section', id = 'main_content', class = 'container')
}
