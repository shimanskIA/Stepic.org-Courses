sl_wrap <- ggplot(iris, aes(x = Sepal.Length)) +
  geom_density() +
  facet_wrap( ~ Species)