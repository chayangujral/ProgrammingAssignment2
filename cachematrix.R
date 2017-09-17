## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# These functions written in partial fulfillment of Coursera Data Science: R Programming 
## Week 3 Assignment user chayangujral
makeCacheMatrix <- function(x = matrix()) {
  
  ## This function creates a special "matrix" object that can cache its inverse
  
makeCacheMatrix <- function(x = matrix()) { ## define the argument with default mode of "matrix"
invrs <- NULL                             ## initialize invrs as NULL; will hold value of matrix inverse 
set <- function(y) {                    ## define the set function to assign new 
x <<- y                             ## value of matrix in parent environment
invrs <<- NULL                        ## if there is a new matrix, reset invrs to NULL
get <- function() x                     ## define the get fucntion - returns value of the matrix argument
setinverse <- function(inverse) invrs <<- inverse  ## assigns value of invrs in parent environment
getinverse <- function() invrs                     ## gets the value of invrs where called
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  ## you need this in order to refer to the functions with the $ operator
}
}

## Write a short comment describing this function

cacheSolve <- function(x, ...){
        ## Return a matrix that is the inverse of 'x'
  
  ## Return a matrix that is the inverse of 'x'
invrs <- x$getinverse()
if(!is.null(invrs)) {
message("getting cached data")
return(invrs)
}

 data <- x$get()
invrs <- solve(data, ...)
x$setinverse(invrs)
invrs
}

