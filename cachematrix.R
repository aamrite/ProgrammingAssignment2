## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# the makeCacheMatrix function does the following
#1) sets the value of a matrix
#2) gets the value of a matrix
#3) sets te value for the inverse matrix
#4) gets the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv<<- inverse
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## Write a short comment describing this function
# The following function gets the inverse of a matrix. 
# It checks f the inverse has been cached and displays the cached value
## if not it computes the inverse and displays the inverse matrix
cacheSolve <- function(x, ...) {
  inv<-x$getinv()
  if(!is.null(inv)){
    
    message("inverse matrix obtained from cache")
    return (inv)
    
  }
  matrix1<-x$get()
  inv<-solve(matrix1,...)
  x$setinv(inv)
  return(inv)
}


