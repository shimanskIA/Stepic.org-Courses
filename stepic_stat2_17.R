is_multicol <- function(d)
{
  m_cor <- cor(d) - diag(ncol(d))
  names <- rownames(which(near(m_cor, 1) | near(m_cor, -1), arr.ind = T))
  if (length(names) > 0) names else "There is no collinearity in the data"
}

