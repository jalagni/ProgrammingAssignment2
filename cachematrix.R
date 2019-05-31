## Put comments here that give an overall description of what your
## functions do

## Cachec calculated  Matrix inverse
## return list for with setCache,getCache,getData,setData property
## Need to setData

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


## Check if Matrix inverse is calculated and return from cachec if its there
## Else setData along with content in Cache
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

