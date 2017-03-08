#The first function, makeMatrix creates a special "Matrix",
#which is really a list containing a function to
makeCacheMatrix <- function(x){
  #set the value of the matrix
  setMatrix <- function(y){
    x <<- y
    xinvrse <- NULL
  }
  #get the value of the matrix
  getMatrix <- function() x
  setInverseMatrix <- function(x) xinvrse <- solve(x) #set the inverse of the matrix
  getInverseMatrix <- function(x) xinvrse #get the inverse of the matrix
  list(set = setMatrix, get = getMatrix, setInverse = setInverseMatrix, getInverse = getInverseMatrix)
}

cacheSolve <- function(x,...){
  xinvrse <- x$getinverse()
  if(!isnull(xinvrse)){
    message("getting cached data")
    return(xinvrse)
  }
  data <- x$getMatrix()
  xinvrse <- solve(data)
  xinvrse
  }
