mark.position.portion <- function(purchases) 
{
  purchases <- purchases[quantity > 0]
  purchases[, price.portion := sprintf("%.2f",((price * quantity) / sum(price * quantity)) * 100), by = ordernumber]
}