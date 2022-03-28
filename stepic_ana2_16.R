ordered.short.purchase.data <- function(purchases) 
{
  purchases[quantity > 0][order(-price), .(ordernumber, product_id)]
}