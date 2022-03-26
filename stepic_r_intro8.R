decorate_string <- function(pattern, ...) 
{ 
  res <- paste(...)
  rev_str <- strsplit(pattern, NULL)[[1]]
  rev_str <- paste(rev(rev_str), collapse = "")
  res <- paste(pattern, res, rev_str, sep = "")
  res
}
