my_names <- function (dataset, names)
{
  dataset[sapply(dataset$name, function(x) any(sapply(names, function(y) grepl(y, x)))), ]
}