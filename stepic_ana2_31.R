iris_plot <- ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  geom_point() +
  geom_smooth(method = "lm") +
  scale_x_continuous(name = "Длина чашелистика", breaks = seq(4, 8, 1), limits = c(4, 8)) +
  scale_y_continuous(name = "Длина лепестка", breaks = seq(1, 7, 1)) +
  scale_color_discrete(name = "Вид цветка", labels = c("Ирис щетинистый", "Ирис разноцветный", "Ирис виргинский"))