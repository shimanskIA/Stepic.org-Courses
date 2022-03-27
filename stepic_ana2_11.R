all_to_factor <- function(x)
{
  mutate_each(x, funs(factor(.)))
}