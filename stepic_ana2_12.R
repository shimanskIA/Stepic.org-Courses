log_transform <- function(test_data)
{
  test_data %>%
    mutate_each(
      funs(
        if(is.numeric(.)) 
          {
            . <- log((. - min(.)) / (max(.) - min(.)) + 1)
          } 
        else 
          {
            . <- .
          }))
}