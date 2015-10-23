## This program creates functions that can cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) { #creating a function
    m <- NULL #empty cache
    set <- function(y) { #create matrix
        x <<- y
        m <<- NULL
    }
    get <- function() x #get matrix value
    setinverse <- function(inverse) m <<- inverse #invert matrix and store
    getinverse <- function() m  #get inverse from cache
    list(set=set, #set value of matrix
         get=get, #get value of matrix
         setinverse=setinverse, #set inverse of matrix
         getinverse=getinverse) #get inverse of matrix
}


## This program creates function for inverse of matrix

cacheSolve <- function(x, ...) { #cache matrix
    m <- x$getinverse() #get inverse of matrix from cache
    if(!is.null(m)) {
        return(m) #return matrix
    }
    trix <- x$get()
    m <- solve(trix)
    x$setinverse(inv)
    m
}
        ## Return a matrix that is the inverse of 'x'

