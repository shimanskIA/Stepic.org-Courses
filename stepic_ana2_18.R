get.category.ratings <- function(purchases, product.category) 
{
  setkey(product.category, product_id, product_id)
  setkey(purchases, product_id, product_id)
  m_table <- merge(product.category, purchases, by = "product_id")
  m_table[, .(totalcents = sum(totalcents), quantity = sum(quantity)), by = category_id]
}