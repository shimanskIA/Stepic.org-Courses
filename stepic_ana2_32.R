make.fancy.teapot <- function(teapot.coords) 
{
  i.s <- seq(0, nrow(teapot.coords) - 2, 3)
  j.s <- seq(1, nrow(teapot.coords) - 1, 3)
  k.s <- seq(2, nrow(teapot.coords), 3)
  plot_ly(teapot.coords, x = x, y = y, z = z, i = ~i.s, j = ~j.s, k = ~k.s, type = "mesh3d")
}