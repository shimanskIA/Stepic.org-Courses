points <- data.table(
  x = c(0.2, 0.8, 0, 1),
  y = c(0, 0, 1, 1),
  z = c(0, 0, 0, 0)
)
i.s <- c(0, 2)
j.s <- c(1, 1)
k.s <- c(2, 3)
plot_ly(points, x = ~x, y = ~y, z = ~z, i = ~i.s, j = ~j.s, k = ~k.s, type = "mesh3d")