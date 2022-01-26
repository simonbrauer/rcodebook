#' Generate HTML body
#'
#' @param df data frame
#' @param max_rows integer
#' @param drop boolean
#'
#' @return string
#' @export
#'
#' @examples
generate_body <- function(df, max_rows = 20, drop = FALSE){
  left_pane <- codebook::generate_left_pane(colnames(df))
  main_content <- codebook::generate_main_content(df, max_rows, drop)

  stringr::str_c(left_pane, main_content) %>%
    codebook::tag_surround('body')
}
