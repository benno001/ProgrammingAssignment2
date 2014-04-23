## Create cacheable matrix inverse object
## Input is a square matrix
## Returns a list of functions to get and set the value of the functions
makeCacheMatrix <- function(x = matrix()) {
  ## Initiate object
  m <- NULL
  
  ## Sets a matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  ## Retrieves a matrix
  get <- function() x
  
  ## Sets inverse of a matrix
  setInverse <- function(x) m <<- solve(x)
  
  ##Retrieves inverse of a matrix
  getInverse <- function() m
  
  ## Return a list with all four functions
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Inverts matrix from makeCacheMatrix.
## Input is a (potential) cacheMatrix
## When already cached, retrieve inverted matrix from cache
## Returns inverted matrix

cacheSolve <- function(x, ...) {
  
  ## Set m to a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  ## If matrix is already cached, return cached matrix
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  ## Retrieve original matrix
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  
  ## Return inverse of 'x'
  m
}
