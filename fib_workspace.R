source("fibonacci_functions.R")
#Input the sequence length
n<-as.integer(readline(prompt = "Enter number: "))

#The three functions 
a<-fib(n)
b<-fib_multiplied(n)
c<-fib_factorial(n)

#Collect all the vectors into a single dataframe
b<-c(b,0)
fib_dfr<-data.frame(a,b,c)
