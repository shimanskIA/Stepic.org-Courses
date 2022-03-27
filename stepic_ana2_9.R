my_df <- mtcars %>%
  select(mpg, hp, am, vs) %>%
  filter(mpg > 14, hp > 100) %>%
  arrange(desc(mpg)) %>%
  slice(1 : 10) %>%
  rename("Miles per gallon" = mpg, "Gross horsepower" = hp)