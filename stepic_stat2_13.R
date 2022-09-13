smart_hclust <- function(test_data, cluster_number)
{
  cluster <- cutree(hclust(dist(test_data)), cluster_number)
  test_data$cluster <- factor(cluster)
  test_data
}