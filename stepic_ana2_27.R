mpg_facet <- ggplot(mtcars, aes(x = mpg)) +
  geom_dotplot() +
  facet_grid(am ~ vs)