high.corr <- function(x)
{
  m_cor <- abs(cor(x))
  diag(m_cor) <- 0
  max_el <- which.max(m_cor)
  row <- ceiling(max_el / ncol(m_cor))
  col <- which.max(m_cor[row, ])
  return (c(rownames(m_cor)[row], colnames(m_cor)[col]))
}