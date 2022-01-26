#' Generate codebook
#'
#' @param df data frame
#' @param max_rows integer
#' @param drop boolean
#'
#' @return string
#' @export
#'
#' @examples
#' \dontrun{
#'     reader::write_lines(generate_codebook(mtcars), 'mtcars codebook.html')
#' }
generate_codebook <- function(df, max_rows = 20, drop = FALSE){
  body <- codebook::generate_body(df, max_rows, drop)
  head <- codebook::generate_style() %>%
    codebook::tag_surround('style') %>%
    codebook::tag_surround('head')

  stringr::str_c(head, body, collapse = '\n') %>%
    codebook::tag_surround('html') %>%
    (function(x){
      stringr::str_c('<!DOCTYPE html>', x)
    })
}
