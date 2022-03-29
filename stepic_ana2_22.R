get_strange_var <- function(d)
{
  sd_t <- d$t - predict(lm(t ~ x, d), d)
  sd_z <- d$z - predict(lm(z ~ x, d), d)
  tx <- shapiro.test(sd_t)$p.value > 0.05
  xz <- shapiro.test(sd_z)$p.value > 0.05
  if (tx == T & xz == F) return("z")
  else if (tx == F & xz == T) return("t")
  else if (tx == F & xz == F) return("x")
  else return("There is no strange variable in the data")
}