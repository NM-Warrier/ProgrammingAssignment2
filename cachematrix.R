
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##create a function to compute its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  a <- NULL
  set <- function(y){
    x <<- y
    a <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  a <- x$getInverse()
  if(!is.null(a)){
    message("getting cached data")
    return(a)
  }
  mat <- x$get()
  a <- solve(mat,...)
  x$setInverse(a)
  a
}



