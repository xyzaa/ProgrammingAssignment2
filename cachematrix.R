## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  
        
        
        verse <- NULL
        Set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() {x}
        setInverse <- function(inverse) {verse <<- inverse}
        getinverse <- function() {verse}
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        verse <- x$getINverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(verse)
        }
        mat <- x$get()
        verse <- solve(mat, ...)
        x$setInverse(verse)
        verse
}
