smart_model <-  function(test_data)
{
  if (ncol(test_data) > 2)
  {
    vif <- VIF(test_data)
    if (any(vif > 10)) smart_model(test_data[-(which.max(vif) + 1)]) else lm(test_data)$coefficients
  }
  else lm(test_data)$coefficients
}