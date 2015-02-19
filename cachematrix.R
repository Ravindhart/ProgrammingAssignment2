## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) { ##Function to set the matrix
                x <<- y
                i <<- NULL
        }
        get <- function() x  ##Function to return the matrix
        setinverse <- function(inverse) i <<- inverse ##Function to set the inverse
        getinverse <- function() i ##Function to get the inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         i <- x$getinverse() ##Getting the inverse of the matrix into i
        if(!is.null(i)) {     ##If i is null, meaning it is not computed yet
                message("getting cached data")
                return(i)
        }
        data <- x$get()     ##If inverse is not computed for the first time
        i <- solve(data, ...)  ##compute it here and 
        x$setinverse(i)       ##set it to i
        i
}
