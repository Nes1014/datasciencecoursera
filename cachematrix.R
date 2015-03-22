## Put comments here that give an overall description of what your
## functions do



## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # inv will store the cached inverse matrix
  inv <- NULL
  
  # Set for the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  # Get the matrix
  get <- function() x
  
  setinverse <- function(inverse) inv <<- inverse
  
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  
  # If the inverse is already calculated, return it
  if(!is.null(inv)) {
    message("Getting cached data!")
    return(inv)
  }
  # The inverse is not yet calculated, calculate it
  data <- x$get()
  inv <- solve(data)
  
  # Cache the inverse
  x$setinverse(inv)
  inv

}
