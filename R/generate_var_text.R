#' Generate variable text/note
#'
#' @param x vector
#'
#' @return character vector
#' @export
#'
#' @examples
generate_var_text <- function(x){
  if(is.null(attr(x, 'text', exact = TRUE))){
    ''
  } else{
    attr(x, 'text', exact = TRUE) %>%
      codebook::tag_surround('p', class = 'var_text')
  }
}
