get_pca2 <- function(data)
{
  components <- prcomp(data)
  prop <- summary(components)$importance[3, ]
  data <- cbind(data, components$x[,1 : min(which(prop >= 0.9))])
  data
}