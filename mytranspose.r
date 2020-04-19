mytranspose <- function(x) {
  
  tryCatch({
    if(is.matrix(x)) {
      ## matrix or data.frame
      y <- matrix(nrow=ncol(x), ncol = nrow(x))
      
      for(i in 1:nrow(x)) {
        for(j in 1:ncol(x)) {
          y[j,i] <- x[i,j]
        }
      }
    } else if (is.data.frame(x)) {
      y <- t(x)
    } else {
      ## vector
      y <- matrix(nrow=length(x), ncol = 1)
      
      for(i in 1:length(x)) {
        y[i, 1] <- x[i]
      }
    }
    
    return(y)
  }, error = function(e) {
    return(x)
  })
}