count_elements <- function(x) 
{
  originals <- sort(x[!duplicated(x)])
  y <- vector(length = length(originals))
  for (i in 1 : length(originals))
  {
    y[i] <- length(which(x == originals[i]))
  }
  m <- rbind(originals, y)
  m
}
