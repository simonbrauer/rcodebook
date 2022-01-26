#' Data frame to HTML table
#'
#' @param df a data frame
#'
#' @return a string
#' @export
#'
#' @examples
df_to_table <- function(df){
  header <- codebook::tag_surround(colnames(df), 'th') %>%
    stringr::str_c(collapse = '') %>%
    codebook::tag_surround('tr') %>%
    codebook::tag_surround('thead')

  body <- df %>%
    purrr::map_df(codebook::tag_surround, 'td') %>%
    as.list() %>%
    purrr::pmap_chr(stringr::str_c, collapse = '') %>%
    (function(x){
      stringr::str_c('<tr>', x, '</tr>')
    }) %>%
    stringr::str_c(collapse = '\n') %>%
    codebook::tag_surround('thead')

  stringr::str_c(header, body, collapse = '\n') %>%
    codebook::tag_surround('table')
}
