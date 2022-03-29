fix_data <- function(d)
{
  cols_to_fix <- which(sapply(test_data, function(y) max(sapply(l, function(x) grepl(x, y)))) == 0)
  mutate_at(test_data, cols_to_fix, funs(as.numeric(gsub(" ", "", .))))
}