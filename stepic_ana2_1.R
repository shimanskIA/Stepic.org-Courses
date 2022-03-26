get_negative_values <- function(test_data)
{
  
  apply(test_data[apply(test_data, 2, function(x) any(x < 0, na.rm = T))], 2, function(x) 
    {
    x <- na.exclude(x)
    x[x < 0]
  })
}