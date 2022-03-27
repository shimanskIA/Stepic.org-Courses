high_price <- diamonds %>%
  group_by(color) %>%
  arrange(desc(price)) %>%
  slice(1 : 10) %>%
  select(color, price)