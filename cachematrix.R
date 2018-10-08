## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        m <- null                       #initialising m to null
        get <- function() x             # fun return martrix
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        setinverse <- function(Solve) m <<- Solve              # setting solve function to setinverse
        getinverse <- function() m
        list(                                                   # list of func
                get = get 
                setinverse = setinverse
                getinverse = getinverse
        )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m))                                 #if present returns its inverse from cache
        {
                message("getting cached data")
                Return(m)
        }
        data <- x$get()                                 #if not then store matrix in data
        m <- x$setinverse(data,...)                     # calculate inverse
        m                                               # return inverse
}
