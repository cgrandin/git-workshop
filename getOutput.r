# Primary
readMod <- function(name=NULL){
  # readMod = readModel reads in the model name.dat and name.rep files
  if(is.null(name)){
    return(NULL)
  }
  fileDat <- paste0(name,".dat")
  fileRep <- paste0(name,".rep")
  out <- NULL

  tmp <- read.table(file=fileDat, sep="\n")
  nobs <- tmp[1,]
  tmp <- matrix(tmp[-c(1,nrow(tmp)),], ncol=2, nrow=nobs)
  out[[1]] <- tmp

  out[[2]] <- read.table(file=fileRep, sep="\n")
  return(out)
}

plotLW <- function(data){
  # First column of 'data' assumed to be fork length (mm), second is round weight (g)
  lw <- data[[1]]
  l <- lw[,1]/10.0 # divide by ten to go from mm->cm
  w <- lw[,2]
  plot(l,w,xlab="Length (cm)",ylab="Weight (g)")
  a <- data[[2]][1,]
  b <- data[[2]][2,]
  curve(a*x^b,col="red",lwd=2,add=T)
}

plotGrowth <- function(data){
  # First column of 'data' assumed to be fork length (mm), second is age
  lage <- data[[1]]
  l <- lage[,1]/10.0 # divide by ten to go from mm->cm
  age <- lage[,2]
  plot(age,l,ylab="Length (cm)",xlab="Age",xlim=c(0,20),pch=1)
  linf <- data[[2]][1,]
  k <- data[[2]][2,]
  curve(linf*(1-exp(-k*x)),col="red",add=T)
}

lw <- readMod("lengthweight")
vonb <- readMod("vonb")
