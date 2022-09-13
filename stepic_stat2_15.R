get_pc <- function(d)
{
  components <- prcomp(d)
  d$PC1 <- components$x[, 1]
  d$PC2 <- components$x[, 2]
  d
}