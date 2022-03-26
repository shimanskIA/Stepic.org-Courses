greatest_adventurers <- function(frame)
{
  for (i in 1 : length(frame))
  {
    print(names(frame)[i])
    print(names(which.max(tapply(frame[[i]], avian$Observer, max))))
  }
}
