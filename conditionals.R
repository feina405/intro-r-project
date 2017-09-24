# Conditional in R
# by Arjun Biddana

num <- 3
if(num > 5){
  print("greater than 5")
} else {
  print("try again!")
}

num <- 53
if(num > 100){
  print("greater than 100")
}


# Exercise : write a function to return (0,-1,1) based on the sign of the input interger. call the function "sign" 

sign <- function(x){
  if (x == 0){
    return(0) 
  } else if(x > 0) {
    return (1)
} else {
  return(-1)
}
}




if((1 > 0) & (-1 >0)){
  print("both parts are true")
} else {
  print("at least one part is false")
}

if((1 > 0) | (-1 >0)){
  print("at least one part is false")
} else {
  print("both parts are false")
}



if (1 > 0){
  if(-1 > 0){
    print("both are true")
  }else{
    print("at least one part is false")
  }
} else {
    print("at lease one part is false")
  }


#Grabbing Odd numbers
n100 <- seq(1,100)
n100 %% 2 == 1
n100[n100 %% 2 == 1]
getOdd <- function(v){
  return(v[v %% 2 == 1])
}
getOdd(n100)

# Exercise:
# write a function which takes 3 arguments:
# v - a vector of integers
# x - a number to check for even divisibility
# y - a second number to check for even divisibility
# Output should be all number in "v" that are evenly divisible by both "x" and "y"
# example : double_div(c(1,2,3,4),2,3) => [4]
# note : you must use a for loop for this

# solution1
double_div <- function(v,x,y){
  for (e in v){
    if((e %% x == 0)&(e %% y == 0)){
      print(e)
    }
  }
}
double_div(n100,7,11)
# solution2
double_div2 <- function(v,x,y){
  return(v[(v %% x==0)&(v %% y==0)])
}
double_div2(n100,7,3)

# challenge Exercise:
# Write a function which takes in 1 argument:
# v - a vecter of positive  
