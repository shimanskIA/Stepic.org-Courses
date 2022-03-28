filter.expensive.available <- function(products, brands) 
{
  sample.products[price >= 500000 & available == T & brand %in% brands]
}