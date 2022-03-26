na_rm  <- function(x)
{
  as.data.frame(apply(x, 2, function(x) {
    x[which(is.na(x) == T)] <- mean(x, na.rm = T)
    x
    }))
}