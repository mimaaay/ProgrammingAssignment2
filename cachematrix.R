## Lexical Scoping: Programming Assignment 2
## Caching the Inverse of a Matrix
## The functions below are established to store a matrix as well as cache its inverse

## Functions that are created to cache the inverse of special matrix

makeCacheMatrix <- function(x = matrix()) {
  amb <- NULL
  set <- function(y) {
    x <<- y
    amb <<- NULL

}
  get <- function() x
  setInverse <- function(inverse) amb <<- inverse
  getInverse <- function() amb
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## This function calculates the inverse of the matrix created by the makeCacheMatrix
## If matrix is not changed as well as if the inverse is calculated, it should get
## the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  amb <- x$getInverse()
  if (!is.null(amb)) {
    message("acquiring cached data")
    return(amb)
  }
