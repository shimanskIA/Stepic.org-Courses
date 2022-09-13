transform_x <-  function(test_data)
{
  max_cor <- 0; p <- 0
  for (i in c(seq(-2, -0.1, 0.1), seq(0.1, 2, 0.1)))
  {
    act_cor <- abs(cor(test_data[1], test_data[2] ^ i))
    if (act_cor > max_cor) 
    {
      max_cor <- act_cor 
      p <- i
    }
  }
  log_t <- log(test_data[, 2])
  if (abs(cor(test_data[1], log_t)) > max_cor) log_t 
  else if (p < 0) -(test_data[, 2] ^ p)
  else test_data[, 2] ^ p
}