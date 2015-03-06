eur <- c(7.5, 7.4, 9, 8, 7.3, 7.3, 7.3)
clicks <- c(1000, 200, 300, 500, 800, 5000, 4000)

getMatrix <- function() {
  result <- data.frame(eur, clicks)
  row.names(result) <- c("mandag", "tirsdag", "onsdag", "torsdag", "fredag", "lørdag", "søndag")
  return(result)
} 
