# Function in R
# by Arjun Biddanda

fahr_to_kelvin <- function(temp){
  kelvin <- 273.15 + ((temp - 32) * (5/9))
  return(kelvin)  
}

# comment:kelvin -> Celsius 
# function (): variables in the parethesis should always be the same inside the function body{}
kelvin_to_celsius <- function(t){
  celsius <- t - 273.15
  return(celsius)
}

# 
fahr_to_celsius <- function(temp){
  kelvin <- fahr_to_kelvin(temp)
  celsius <- kelvin_to_celsius(kelvin)
  return(celsius)
}
# the same with
kelvin_to_celsius(fahr_to_kelvin(32))

# Exercise
# Define a funciton "fence"-which take 2 vectors and returns the second vector concatenated to the first

# solution
fence <- function(x,y){
  output <- c(y,x)
  return(output)
}

test_vec1 <- c("Arjun","is","awesome")
test_vec2 <- c(13,15,16,5)
fence(test_vec1, test_vec2)

input_1 <-  20
mySum <- function(input_1,input_2 = 10){
  output <- input_1 + input_2
  return(output)
}
mySum(input_1=1, 3)
# input_1外面的注释跟funciton内部的input_1不是一回事！！！只要function里面都好前后赋值就可以了
mySum(input_1 = 1)
# 重新定义了input_1，input_2 is still 10
mySum(input_1=1, input_2= 3)
# 重新定义了input_1 input_2

input_1 <-  20
mySum <- function(input_1,input_2 = 10){
  print(input_1)
  print(input_2)
  output <- input_1 + input_2
  return(output)
}

mySum(2)
x2 <- mySum(input_1=2) #??
x2 #??

# Function to center my data
# desired --- value to center on
center <- function(data, desired){
  # return a new vector containing original data centered around
  # the desired value
  # Example : center(c(1,2,3),0) => c(-1,0,1)
  new_data <- (data - mean(data))+desired
  return(new_data)
}

Z <- c(0,0,0,0)
center(Z,3) 

dat <- read.csv("data/inflammation-01.csv", header = F) 
centered <- center(dat[,4],0)
head(centered)
tail(centered)
mean(dat[,4])
max(dat[,4])
min(centered)
mean(centered)
max(centered)
min(dat[,4])
sd(centered)
sd(centered) == sd(dat[,4])


# ------Appy function------
patient1 <- dat[1,]
patient1

avg_day_inflammation <- apply(dat,2,mean) #???

dim(avg_day_inflammation)
head(avg_day_inflammation)
tail(avg_day_inflammation)

plot(avg_day_inflammation)


max_day_inflammation <- apply(dat, 2, max)
min_day_inflammation <- apply(dat, 2, min)
plot(max_day_inflammation)
plot(min_day_inflammation)

# Exersise:
# create a funciton called "analyze" whose input is the name of a dataset (e.g. "data/inflammation-01.csv") and output a plot of mean inflammation per day

analyze <- function(filename){
  dat <- read.csv(filename, header = F)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
}
analyze("data/inflammation-02.csv")
pdf("inflammation-02.pdf") #??
analyze("data/inflammation-02.csv")
dev.off()
