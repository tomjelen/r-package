createRandomData <- function(seed) c(72*seed,87*seed,56*seed,54*seed)

randomDataA <- createRandomData(1)
randomDataB <- createRandomData(2)

getMatrix <- function() data.frame(randomDataA, randomDataB)
