## This file contains two functions. One creates a special matrix object 
## The second function retrieves the inverse value and return it

## The function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y) {
     x <<- y
     I <<- NULL
  }
  get <- function() x
  setInverse <- function(Inverse) I <<- Inverse
  getInverse <- function() I
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
## by either retrieving from cache or calculating it
cacheSolve <- function(x, ...) {
   I <- x$getInverse()
   if(!is.null(I)) {
     message("Getting cached data")
    return(I)
   }
   data <- x$get()
   I <- solve(data, ...)
   x$setInverse(I)
   I
        ## Return a matrix that is the inverse of 'x'
}
