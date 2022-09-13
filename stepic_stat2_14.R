get_difference<-  function(test_data, n_cluster)
{
  clustered_data <- smart_hclust(test_data, n_cluster)
  p_values <- sapply(clustered_data[-length(clustered_data)], function(x) summary(aov(x ~ clustered_data$cluster))[[1]]$`Pr(>F)`[1])
  colnames(clustered_data)[which(p_values < 0.05)]
}