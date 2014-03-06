# master branch
getShade <- function(color, opacity){
  # If color is a single R color string or single number,
  #  returns an rgb string of the specified color and opacity
  # If color is a vector of R color strings or numbers,
  #  returns a vector of rgb strings of the specified color and opacity.
  # If the opacity argument is non-integer or not between 0 and 99, NULL will be returned.
  # - opacity - 2-decimal-digit string (00-99), i.e. "20" means 20%
  # Notes: format of returned string is #RRGGBBAA
  #        where RR=red, a 2-hexadecimal-digit string
  #        GG=green, a 2-hexadecimal-digit string
  #        BB=blue, a 2-hexadecimal-digit string
  #        AA=alpha or opacity
  #
  # The opacity argument is scalar and will be applied to all colors.
  if(!(opacity %% 1 == 0) || opacity<0 || opacity>99){
    cat0(getCurrFunc(),"opacity argument must be an integer between 0 and 99.\n")
    return(NULL)
  }
  colorDEC <- col2rgb(color)
  if(is.matrix(colorDEC)){
    colorHEX <- matrix(nrow=3,ncol=ncol(colorDEC))
    shade <- NULL
    for(col in 1:ncol(colorDEC)){
      for(row in 1:nrow(colorDEC)){
        colorHEX[row,col] <- sprintf("%X", colorDEC[row,col])
        if(nchar(colorHEX[row,col])==1){
          colorHEX[row,col] <- paste0("0",colorHEX[row,col])
        }
      }
      shade[col] <- paste0("#",colorHEX[1,col],colorHEX[2,col],colorHEX[3,col],opacity)
    }
  }else{
    colorHEX <- sprintf("%X", colorDEC)
    for(i in 1:length(colorHEX)){
      if(nchar(colorHEX[i])==1){
        colorHEX[i] <- paste0("0",colorHEX[i])
      }
    }
    shade <- paste0("#",colorHEX[1],colorHEX[2],colorHEX[3],opacity)
  }
  return(shade)
}

getShadeExample <- function(func={function(x) dbeta(x,7,2)},
                            col="blue",
                            opacity=30,
                            shade=getShade(col,opacity),
                            ...
                            ){
  # An example of how getShade and getCurrFunc() works
  # Set col to be an R color and opacity to a number between 1 and 99
  #cat0(getCurrFunc(),"getShade() returned ",shade)
  out   <- curve(func, ...)
  z     <- NULL
  z$x   <- out$x[c(1,1:length(out$x),length(out$x))]
  z$y   <- c(0,out$y,0)
  polygon(z,col=shade,border=col,lwd=2)
}

curfnfinder <- function(skipframes=0,
                        skipnames="(FUN)|(.+apply)|(replicate)",
                        retIfNone="Not in function",
                        retStack=FALSE,
                        extraPrefPerLevel="\t"){
  # Get the current function name from within the function itself.
  # Used to prepend the function name to all messages so that the
  # user knows where the message came from.
  prefix <- sapply(3 + skipframes+1:sys.nframe(), function(i){
    currv <- sys.call(sys.parent(n=i))[[1]]
    return(currv)
  })
  prefix[grep(skipnames, prefix)] <- NULL
  prefix <- gsub("function \\(.*", "do.call", prefix)
  if(length(prefix)==0){
    return(retIfNone)
  }else if(retStack){
    return(paste(rev(prefix), collapse = "|"))
  }else{
    retval <- as.character(unlist(prefix[1]))
    if(length(prefix) > 1){
      retval <- paste0(paste(rep(extraPrefPerLevel, length(prefix) - 1), collapse=""), retval)
    }
    return(retval)
  }
}

getCurrFunc <- function(){
  # Returns the calling function's name followed by ": "
  funcName <- curfnfinder(skipframes=1) # skipframes=1 is there to avoid returning getCurrFunc itself
  # Strip extraneous whitespace
  funcName <- gsub("\t+","",funcName)
  funcName <- gsub("\ +","",funcName)
  funcName <- paste0(funcName,": ")
  return(funcName)
}

cat0 <- function(...){
  cat(..., "\n", sep="")
}

#getShadeExample(func={function(x) dnorm(x,0,0.25)},from=-1,to=1, lwd=2, col="red", yaxp=c(0,3,30))
#getShadeExample(func={function(x) dchisq(x,100,df=10)},
#                from=0,
#                to=20,
#                lwd=2,
#                col="black",
#                shade=getShade("green",opacity=20),
#                yaxp=c(0,3,30))
