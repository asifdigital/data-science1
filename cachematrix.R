# Matrix inversion is usually a costly computation and there may be some benefit to caching the 
# inverse of a matrix rather than compute it repeatedly (there are also alternatives to matrix 
# inversion that we will not discuss here).
# 
# Your assignment is to write a pair of functions that cache the inverse of a matrix.
# 
# Write the following functions:
#   
# 1)makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
# 
# 2)cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix
# above. If the inverse has already been calculated (and the matrix has not changed), then the 
# cachesolve should retrieve the inverse from the cache.

## Put comments here that give an overall description of what your
## functions do



## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(tempMatrix) m <<- tempMatrix
  getinverse <- function() m
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m

}