get_id <- function(data_list)
{
  df <- do.call(rbind, data_list)
  df %>%
    group_by(id) %>%
    summarize(n = n(), mean_temp = mean(temp)) %>%
    filter(n == 7) %>%
    select(-n)
}