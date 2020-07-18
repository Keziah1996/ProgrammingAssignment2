## This file contains two functions. One creates a 3 by 3 matrix and assigns its inverse tocache
## The second function tries to retrieve the value and return it

## Function 1 below creates a 3 by 3 matrix, calculates its inverse and caches it

makeCacheMatrix <- function(x = matrix()) {
        x=matrix(c(7,6,5,8,0,9,3,2,1),nrow=3,ncol=3)
  y<<-x
    makeCacheMatrix<-function(y)
    makeCacheMatrix=solve(y)  
    makeCacheMatrix<<-makeCacheMatrix(y)
    makeCacheMatrix

}

## Function 2 retrieves the cached inverse if the matrix is unchanged and calculates the new inverse if 
##the value retrieved is null
cacheSolve <- function(x, ...) {
        cacheSolve<-function(y)
    s<-y$makeCacheMatrix
     if(!is.null(s)){
      print("Fetching cached data")
      return(s)
    } else {
      data<-y
      s=solve(y)
      return(s)
    }
        ## Return a matrix that is the inverse of 'x'
}
