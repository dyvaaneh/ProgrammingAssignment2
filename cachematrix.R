## These 2 functions will calculate the inverse of a square matrix and
## store the result in cache.

## This function (makeCacheMatrix) defines and creates a list of functions 
## set, get, setinverse, and get inverse, for solving for the inverse of 
## a square matrix.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inv <<- solve
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function (cacheSolve) uses the functions makeCacheMatrix functions
## to calculate the inverse of a square matrix.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached matrix data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(i)
  inv
}