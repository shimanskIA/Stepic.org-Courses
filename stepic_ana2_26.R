my_plot <- ggplot(sales, aes(x = date, y = sale, col = shop))+
  stat_summary(fun.data = mean_cl_boot, geom = "errorbar", position = position_dodge(0.3)) + 
  stat_summary(fun = mean, geom = "point", position = position_dodge(0.3)) + 
  stat_summary(fun = mean, geom = "line", position = position_dodge(0.3))