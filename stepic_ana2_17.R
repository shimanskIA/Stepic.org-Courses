purchases.median.order.price <- function(purchases) 
{
  median(purchases[quantity > 0, .(tmp_var = sum(price * quantity)), by = ordernumber]$tmp_var)
}