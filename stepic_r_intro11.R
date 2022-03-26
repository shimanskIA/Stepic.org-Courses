simulate_walk <- function(x = 0, y = 0, n_max = 100, p = 1e-2) {
  for (i in 1:n_max) {
    is_absorbed <- rbinom(1, 1, p)
    if (is_absorbed) return(list(status = "Absorbed", 
                                 position_x = x, 
                                 position_y = y,
                                 steps = i))
    x <- x + rnorm(1)
    y <- y + rnorm(1)
    if (sqrt(x^2 + y^2) > 6) return(list(status = "Breach", 
                                              position_x = x, 
                                              position_y = y,
                                              steps = i))
  }
  return(list(status = "Max steps reached", 
              position_x = x,
              position_y = y,
              steps = n_max))
}

result <- replicate(100000, simulate_walk(), simplify = FALSE)
result <- data.frame(
  status = sapply(result, function(x) x$status),
  position_x = sapply(result, function(x) x$position_x),
  position_y = sapply(result, function(x) x$position_y),
  steps = sapply(result, function(x) x$steps)
)

tapply(result$position_x, result$status, length)
