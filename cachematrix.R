## Put comments here that give an overall description of what your
## functions do

## TCreate a matrix that can cache its inverse.
## sample is the matrix that user will use


makeCacheMatrix <- function(sample = matrix()) {
        invsample <- NULL
        set <- function(x) {
        Sample <<- x
        invsample <<- NULL
        }
        get <- function() sample
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() invsample
        list(
                set = set,
                get = get,
                setInverse = setInverse,
                getInverse = getInverse
        )
}


## Compute the inverse of the matrix created above. 

cacheSolve <- function(sample, ...) {
        ## Return a inverse matrix of sample
        inv <- sample$getInverse()
        if (!is.null(inv)) {
        message("getting cached data")
        return(invsample)
        }
        mat <- sample$get()
        invsample <- solve(mat, ...)
        sample$setInverse(invsample)
        invsample
}
