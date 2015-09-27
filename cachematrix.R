## The following functions does the following
  ##Function 1. Create a list that contains a functions of
  ## a. create a matrix
  ## b. return the matrix
  ## c. set an inverse of matrix
  ## d. return inverse of matrix
  
  ##Function 2. returns inverse of a matrix but first checks if the matrix inverse is already cached in the first function

makeCacheMatrix <- function(x)
  {
   xinv <- NULL
   set <- function(y)
   {
     x <<- y
     xinv <<- NULL
   }
   get <- function() x
   setinv <- function(inv) xinv <<- inv
   getinv <- function() xinv
   list(set = set,get = get, setinv = setinv,getinv = getinv)
  }


## The following function gives the inverse of the matrix object entered
cacheSolve <- function(x, ...) { 
  inv <- x$getinv()
  if(!is.null(inv))
    {
     message("getting cache data")
     return (inv)
    }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
