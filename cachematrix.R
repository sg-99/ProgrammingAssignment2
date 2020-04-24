## Making a cache of matrices which have been inverted and making use of the same 
##while finding out inverse of matrices which are in a high quantity


## cache of matrices

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y)
  {
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setInv<-function(solve)m<<-solve
  getInv<-function()m
  list(set=set,get=get,setInv=setInv,getInv=getInv)

}


## Getting inverse of matrices and using/updating cache

cacheSolve <- function(x, ...) {
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInv(m)
  m

        ## Return a matrix that is the inverse of 'x'
}
