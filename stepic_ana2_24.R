my_plot <- ggplot(sales, aes(x = income, y = sale)) + 
  geom_point(aes(col = shop)) +
  geom_smooth(method = "lm")