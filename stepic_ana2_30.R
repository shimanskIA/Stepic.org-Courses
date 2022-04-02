my_plot <- ggplot(film, aes(x = Type, y = Budget)) +
  geom_boxplot() +
  facet_grid(. ~ Year) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))