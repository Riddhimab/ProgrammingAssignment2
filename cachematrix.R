## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <-function(m=matrix())
        {
                inv<-NULL;
                setm<-function(a)
                {
                        m<<-a;
                        inv<<-NULL;
                }
                ## This function allows you to set the value of the matrix
                
                getm<-function(m){return(m)}; 
                # This function helps you retrieve/return the value of the matrix m
                
                setinverse<-function(inverse){inv<<-inverse}
                # This function helps you set the value of the inverse
                
                getinverse<-function(inv){return(inv)};
                # This function helps you return/retrieve the value of the inverse
                return(list(setm=stem,getm=getm,setinverse=setinverse,getinverse=getinverse))
        }
        



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inverseofm<-x$getinverse()
        if(!is.null(inverseofm)){return(inverseofm)}
        #Gets data from cache
        matrixdata<-x$getm()
        inverse<-solve(matrixdata,...)
        x$setinverse(inverse)
        return(inverse)
        #Assuming that the matrix is invertible(as stated in the question)
        #this function finds the inverse of the matrix
}
