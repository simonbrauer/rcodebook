#' Generate variable entry in main content
#'
#' @param x vector
#' @param text string
#' @param max_rows integer
#' @param drop boolean
#'
#' @return string
#' @export
#'
#' @examples
generate_var_entry <- function(x, var, max_rows = 20, drop = FALSE){
  var_name <- codebook::generate_var_name(var)
  var_label <- codebook::generate_var_label(x)
  var_text <- codebook::generate_var_text(x)
  var_table <- codebook::generate_var_table(x, max_rows, drop)

  stringr::str_c(var_name, var_label, var_text, var_table) %>%
    codebook::tag_surround('div', class = 'var_entry', id = stringr::str_c(var, '_entry'))
}
