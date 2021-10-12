#The Fibonacci sequence is defined by the recursive relation:
#   F(0)=1, F(1)=1
#   F(n)=F(n-1)+F(n-2)
#We can use a simple iterative function to calculate the nth number in the
# sequence.
#The function returns a vector of the first n numbers in the Fibonacci sequence
fib <- function(n) {
  #Initialization
  #F(0)=1 
  #F(1)=1
  Fib_seq <- 1 #base case: F(0)=1
  if (n==1) {
    return(Fib_seq)
  }
  Fib_seq <- c(1,Fib_seq)
  
  #if n>=2
    for (i in 2:n) {
      Fib_seq <- c(Fib_seq, Fib_seq[i-1]+Fib_seq[i-2] )
    }
  return(Fib_seq)
}

# Multiplication of every number in the first n numbers of the Fibonacci 
#   sequence by its preceding neighbor
fib_multiplied<-function(n){
  #Load the Fibonacci sequence
  fib_seq=fib(n)
  #Base case
  if (n==1){return(fib_seq)}
  
  fib_multi<-c(1)
  if(n==2){return(fib_multi)}
  
  #Index cycle has to go up to n+1 otherwise the last two numbers won't be 
  # multiplied.
  for(i in 3:n+1){
    fib_multi<-c(fib_multi,fib_seq[i-1]*fib_seq[i-2])
  }
  return(fib_multi)
  #The resulting vector has n-1 elements
}

#"Factorial" on the Fibonacci sequence
fib_factorial<-function(n){
  #Load the Fibonacci sequence
  fib_seq=fib(n)
  #Base cases
  fact<-1
  if(n==1){return(fact)}
  
  fact<-c(1,2)
  if(n==2){return(fact)}
  
  for(i in 3:n){
    nextfact<-fib_seq[i]*fact[i-1]
    fact<-c(fact,nextfact)
  }
  return(fact)
}





