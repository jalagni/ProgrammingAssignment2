## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  cache <- NULL
  
  getCache <- function() cache
  setCache <- function(value = NULL)  cache <<- value 
  
  setData <- function(m = NULL) {
    cache <<- NULL
    x <<- m  
  }
  getData <- function()  x
  
  list(getData = getData  , setData = setData,
       getCache = getCache, setCache = setCache )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  if (!is.null(x$getCache())){
    message("Retrieving Cached:")
    return(x$getCache())
  }  

  
  data <- x$getData()
  m <- solve(data)
  
  x$setCache(m)
  m
  
}

