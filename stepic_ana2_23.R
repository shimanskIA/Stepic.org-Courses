my_plot <- ggplot(mtcars, aes(x = factor(am), y = mpg)) + 
  geom_violin() + 
  geom_boxplot(width = 0.2)
