eur <- c(7.5, 7.4, 9, 8, 7.3, 7.3, 7.3)
clicks <- c(1000, 200, 300, 500, 800, 5000, 4000)

getMatrix <- function() {
  result <- data.frame(eur, clicks)
  row.names(result) <- c("mandag", "tirsdag", "onsdag", "torsdag", "fredag", "lørdag", "søndag")
  return(result)
} 

# http experiment
fetchJson <- function() {
  response <-jsonlite::fromJSON("http://citibikenyc.com/stations/json")
  return(response)
}

# go-rest-service experiment
getTimeSeries <- function() {
  usdJson <- jsonlite::fromJSON("http://stage.blackwoodseven.com:4444/?currency=USD&from=2015-03-01&to=2015-03-05")
  usdTimeserie = usdJson$series$samples[[1]]$value

  eurJson <- jsonlite::fromJSON("http://stage.blackwoodseven.com:4444/?currency=EUR&from=2015-03-01&to=2015-03-05")
  eurTimeserie = eurJson$series$samples[[1]]$value
  
  fakeClicksTimeserie = c(1000, 200, 300, 500)
  
  result <- data.frame(USD=usdTimeserie, EUR=eurTimeserie, AdformClicks=fakeClicksTimeserie)
  row.names(result) <- c("2015-03-02", "2015-03-03", "2015-03-04", "2015-03-05")
  return(result)
}