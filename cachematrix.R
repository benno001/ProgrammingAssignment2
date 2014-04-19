## Put comments here that give an overall description of what your
## functions do

## Create cacheable matrix inverse object

makeCacheMatrix <- function(x = matrix()) {
  ## Initiate object
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  list(set = set, get = get)
}


## Inverts matrix from makeCacheMatrix.
## When already cached, retrieve inverted matrix from cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$get()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  m <- solve(x, ...)
  x$set(m)c
  m
}
