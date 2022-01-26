#' Generate variable label
#'
#' @param x vector
#'
#' @return string
#' @export
#'
#' @examples
generate_var_label <- function(x){
  if(is.null(attr(x, 'label', exact = TRUE))){
    ''
  } else{
    codebook::tag_surround(attr(x, 'label', exact = TRUE), 'p', class = 'var_label')
  }
}
