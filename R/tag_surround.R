#' Surround entry with HTML tag
#'
#' @param x content of tag
#' @param tag tag name
#' @param ... attributes for tag
#'
#' @return character vector
#' @export
#'
#' @examples
tag_surround <- function(x, tag, ...){
  attribs <- list(...) %>%
    purrr::map2_chr(names(.), function(x, n){
      if(is.null(n)){
        ''
      } else{
        stringr::str_c(n, '="', x, '"')
      }
    }) %>%
    stringr::str_c(collapse = ' ')

  if(length(attribs) != 0){
    tag1 <- stringr::str_c(tag, ' ', attribs)
  } else{
    tag1 <- tag
  }

  stringr::str_c('<', tag1, '>', x, '</', tag, '>')
}
