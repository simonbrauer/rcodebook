#' Generate Value-Label table
#'
#' @param x vector
#' @param max_rows integer
#' @param drop boolean
#'
#' @return string
#' @export
#'
#' @examples
generate_var_table <- function(x, max_rows, drop = FALSE){
  df <- data.frame(Value = x) %>%
    dplyr::group_by(Value) %>%
    dplyr::summarize(Count = dplyr::n()) %>%
    dplyr::ungroup() %>%
    dplyr::mutate(Percent = stringr::str_c(round(100 * Count / sum(Count)), '%'),
                  Count = format(Count, big.mark = ','))

  if(nrow(df) > max_rows & drop){
    codebook::tag_surround('Table dropped because it had too many rows', 'p', class = 'table_drop')
  } else{
    if(!is.null(attr(x, 'labels', exact = TRUE))){
      val_labels <- attr(x, 'labels', exact = TRUE)
      val_df <- data.frame(Value = val_labels, Label = names(val_labels), stringsAsFactors = FALSE) %>%
        dplyr::filter(!is.na(Value))

      suppressMessages({
        df <- dplyr::full_join(df, val_df) %>%
          dplyr::mutate(Label = ifelse(is.na(Value), 'Missing', Label))
      })
    }

    df %>%
      dplyr::arrange(Value) %>%
      purrr::map_df(as.character) %>%
      purrr::map_df(function(x){
        x[is.na(x)] <- ''
        x
      }) %>%
      codebook::df_to_table()
  }
}
