i.s <- seq(0, nrow(teapot) - 2, 3)
j.s <- seq(1, nrow(teapot) - 1, 3)
k.s <- seq(2, 7392, 3)
plot_ly(teapot, x = ~x, y = ~y, z = ~z, i = ~i.s, j = ~j.s, k = ~k.s, type = "mesh3d")