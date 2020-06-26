## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
             inv<-NULL
             set<-function(y)
             x<<-y
             inv<-NULL
             get<-funcion()x
             setInverse<-function(inv) inv<<-inverse
             getInverse<-function()inv
             list(set=set,
                  get=get,
                  setinverse=setInverse,
                  getinverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        Dat <- x$get()
        inv <- solve(Dat, ...)
        x$setInverse(inv)
        inv
}
