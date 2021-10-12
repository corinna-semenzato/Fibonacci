source("fibonacci_functions.R")

#Next line needs to be uncommented in order to enter the value of variable n.
#I commented it because it didn't let me save correctly the file otherwise.
n<-as.integer(readline(prompt = "Enter number: "))


### TESTING fib()
#There is an equation that calculates the nth-number of the Fibonacci sequence
# without the need for the recursive function implied by the definition of the
# sequence.
# F(n)=1/sqrt(5)*(phi1^n-phi2^n)
# where ph1 and phi2 are constants:
phi1<-(1+sqrt(5))/2
phi2<-(1-sqrt(5))/2
last_fib<-1/sqrt(5)*(phi1^n-phi2^n)
fib_seq<-fib(n)

#Verification that the last number in the sequence is correct 
test_that("correct_sum",{expect_equal(fib_seq[n-1]+fib_seq[n-2],
                                 last_fib)})

### TESTING fib_multiplied()
#To test fib_multiplied we need the second to last number in the sequence, which
# can be calculated with the same closed formula as before.
second_last_fib<-1/sqrt(5)*(phi1^(n-1)-phi2^(n-1))
fib_multi<-fib_multiplied(n)

#Testing of fib_multiplied
test_that("correct_multi",{expect_equal(fib_multi[n-1],
                                        second_last_fib*last_fib)})
#Second test: the number of multiplications is n-1, therefore that's the length
# of the resulting vector
test_that("multi_length",{expect_equal(length(fib_multi),n-1)})

#Third test: if fib_multiplied works correctly, then dividing the sequence 
# obtained from fib_multiplied(n) by the original Fibonacci sequence will result
# in the sequence of the first n-1 Fibonacci numbers.
test_that("correct_multi2",{expect_equal(fib_seq[1:n-1],
                                         fib_multi/fib_seq[2:n])})



#TESTING fib_factorial()
#[TBC]
