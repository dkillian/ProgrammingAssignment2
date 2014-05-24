## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##
## Create a list of functions that establishes a matrix and takes its inverse
##
##


makeCacheMatrix <- function(x = matrix(rnorm(9),3,3)) ## return a list of functions
  {
matrixInverse <- NULL ## start out with an empty object that will store the calculation
set <- function(newMatrix) 
  {
  x <<- newMatrix ## the matrix x from makeCacheMatrix will be assigned to whatever is passed in as newMatrix  
  matrixInverse <<- NULL ## retain the empty object to store the calculation. If there had been anything cached under the previous matrix x, it will be reset to NULL when a new matrix is passed in
}
get <- function() x ## the matrix x gets returned. If a new matrix had been established through the function set, that matrix is returned
setmatrixInverse <- function(InverseCalculation) matrixInverse <<- InverseCalculation ## Assign the name matrixInverse to be the matrix inverse calculation from within the setmatrixInverse function
getmatrixInverse <- function () matrixInverse ## a function that only returns the matrixInverse calculation
list(set=set,get=get,
     setmatrixInverse=setmatrixInverse,
     getmatrixInverse=getmatrixInverse)  
}


## Write a short comment describing this function
##
##
##

cacheSolve <- function(x,...) ## calculate or grab cached calculation 
  {
  matrixInverse <- x$getmatrixInverse() ## assign matrixInverse to what getmatrixInverse returns (either the cache result or NULL)
  if(!is.null(matrixInverse)) ## if there is a cached value
    {
    message("getting cached data, you newt")
    return(matrixInverse)
  }
  data <- x$get()
  matrixInverse <- solve(data) ## If there is not a cached value, do the calculation
  x$setmatrixInverse(matrixInverse) ## assign the result of the calculation to the setmatrixInverse function
  matrixInverse
  
## Return a matrix that is the inverse of 'x'
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##
## Create a list of functions that establishes a matrix and takes its inverse
##
##


makeCacheMatrix <- function(x = matrix(rnorm(9),3,3)) ## return a list of functions
  {
matrixInverse <- NULL ## start out with an empty object that will store the calculation
set <- function(newMatrix) 
  {
  x <<- newMatrix ## the matrix x from makeCacheMatrix will be assigned to whatever is passed in as newMatrix  
  matrixInverse <<- NULL ## retain the empty object to store the calculation. If there had been anything cached under the previous matrix x, it will be reset to NULL when a new matrix is passed in
}
get <- function() x ## the matrix x gets returned. If a new matrix had been established through the function set, that matrix is returned
setmatrixInverse <- function(InverseCalculation) matrixInverse <<- InverseCalculation ## Assign the name matrixInverse to be the matrix inverse calculation from within the setmatrixInverse function
getmatrixInverse <- function () matrixInverse ## a function that only returns the matrixInverse calculation
list(set=set,get=get,
     setmatrixInverse=setmatrixInverse,
     getmatrixInverse=getmatrixInverse)  
}


## Write a short comment describing this function
##
##
##

cacheSolve <- function(x,...) ## calculate or grab cached calculation 
  {
  matrixInverse <- x$getmatrixInverse() ## assign matrixInverse to what getmatrixInverse returns (either the cache result or NULL)
  if(!is.null(matrixInverse)) ## if there is a cached value
    {
    message("getting cached data, you newt")
    return(matrixInverse)
  }
  data <- x$get()
  matrixInverse <- solve(data) ## If there is not a cached value, do the calculation
  x$setmatrixInverse(matrixInverse) ## assign the result of the calculation to the setmatrixInverse function
  matrixInverse
  
## Return a matrix that is the inverse of 'x'
}


added to test push from local to GitHub
