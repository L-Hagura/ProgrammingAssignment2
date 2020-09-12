##This mini program returns the inverse of a matrix
##If the inverse already exists, then it will be returned
##without further calculation

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  iMatrix <- NULL
  set <- function(y) {##Reset input and inversed matrix
    x <<- y
    iMatrix <<- NULL
  }
  get <- function() {
    x
  }
  setInverse <- function(inverse) {
    iMatrix <<- inverse
  }
  getInverse <- function() {
    iMatrix
  }
  list(set = set, get = get, 
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        iMatrix <- x$getInverse()
        if (!is.null(iMatrix)) {
          massage("cached data is returned")
          return(iMatrix)
        }
        data <- x$get()
        iMatrix <- solve(data, ...)
        x$setInverse(iMatrix)
        iMatrix
}

