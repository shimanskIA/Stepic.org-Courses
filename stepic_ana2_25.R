my_plot <- ggplot(sales, aes(x = shop, y = income, col = season)) +
  stat_summary(fun.data = mean_cl_boot, geom = "pointrange", position = position_dodge(0.3))