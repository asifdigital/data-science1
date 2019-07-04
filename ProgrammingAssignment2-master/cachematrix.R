# 

## Put comments here that give an overall description of what your
## functions do
#my approach was simple, i took a while but the answer was in the
#existing sample function, makevector() and cachemean()
#all i had to do was to change the get and set mean functions to get and setinverse
#in makevector() and relpace mean() with solve()
#

## Write a short comment describing this function
#sets the supplied matrix to variable and gets it back

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
#calls the above function to get the matrix and run solve on it

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