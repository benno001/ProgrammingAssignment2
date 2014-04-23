### Using the function
 `makeCacheMatrix` returns a list of functions that enable the user to:
* set the value of the vector
* get the value of the vector
* set the value of the mean
* get the value of the mean

`cacheSolve` returns the inverted matrix. When already cached, it retrieves from the cache.
Else, it will compute a new inverted matrix.


> Example input:
 
`exampleVector <- seq(1:4)`
  
`exampleMatrix <- matrix(exampleVector, 2)`
  
`exampleCacheMatrix <- makeCacheMatrix()`
  
`cacheSolve(exampleCacheMatrix)`

> Example output: 

    [,1] [,2]

    [1,]    1    3

    [2,]    2    4

     [,1] [,2]
     
    [1,]   -2  1.5

    [2,]    1 -0.5


