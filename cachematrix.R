@@ -1,15 +1,42 @@
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

## The makeCacheMatrix creates a matrix object, and then cacheSolve calculates the inverse of the matrix.
makeCacheMatrix <- function(x = numeric()) {
    ## inverse matrix
    invMatrix <- NULL
    
    ## set matrix
    set <- function(y) {
        x <<- y
        invMatrix <<- NULL
    }
    ## get matrix
    get <- function() x
    
    ## set inverse
    invMatrixSet <- function(inverse) invMatrix <<- inverse
    ## get inverse
    invMatrixGet <- function() invMatrix
    
    # Return the matrix 
    list(set = set, get = get, invMatrixSet = invMatrixSet, invMatrixGet = invMatrixGet)
}


## Write a short comment describing this function

## The function cacheSolve returns the inverse of a matrix 'X' created with the makeCacheMatrix function.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
    invMatrix <- x$invMatrixGet()
    
    # If the inverse is already calculated:: return inverse
    if (!is.null(invMatrix)) {
        message("Getting Cached Inverse Matrix")
        return(invMatrix)
    }
    
    # The inverse isn't yet calculated:: calculate inverse
    data <- x$get()
    invMatrix <- solve(data, ...)
    
    # Cache the inverse
    x$invMatrixSet(invMatrix)
        
    ## Return a matrix that is the inverse of 'x'
    invMatrix
}
\ No newline at end of file
