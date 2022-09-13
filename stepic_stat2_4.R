stat_mode <- function(x)
{
  u <- unique(x)
  freq <- sapply(u, function(y) sum(y == x))
  u[which(freq == max(freq))]
}