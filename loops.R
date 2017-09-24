# loops

analyze <- function(filename){
  dat <- read.csv(filename, header = F)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation, main=filename)
}

plot(1:3, main="My plot")
dir("data/")

analyze("data/inflammation-01.csv")
analyze("data/inflammation-02.csv")
analyze("data/inflammation-03.csv")


for(i in c(1,3,5)){
  print(i+1)
}

c(1,3,4)+1

inflammaiton_files <- c(
  "data/inflammation-01.csv",
  "data/inflammation-02.csv",
  "data/inflammation-03.csv",
  "data/inflammation-04.csv",
  "data/inflammation-05.csv"
)

for(filename in inflammaiton_files){
  analyze(filename)
}


all_inflammation_files <- dir(
  path = "data",
  full.names = T,
  patterm = "^inflammation-*csv"
)

for(filename in all_inflammaiton_files){
  analyze(filename)
}

x <- c(1:5)
sum(x)

sum_x <- 0
for(i in x){
  cat("i:",i,"\n")
  cat("sum_x",sum_x,"\n")
  sum_x <- sum_x+i
}
sum_x

sum_x <- 0
sum_x <- sum_x + x[1]
sum_x <- sum_x + x[2]
sum_x <- sum_x + x[3]
sum_x <- sum_x + x[4]
sum_x <- sum_x + x[5]
sum_x

2*2*2*2

exponentiate <- function(x,y){
  result <- x
  for(i in 1:y){
    result <- result*x
  }
  return(result)
}
exponentiate(2,3)

product <- function(x,y){
  result <- 0
  for(i in 1:y){
    result <- result+x
  }
  return(result)
}
product(2,4)

print_N <- function(N){
  for(i in 1:N){
    print(i)
  }
}
print_N(3)

dat <- read.csv("data/inflammation-01.csv", head = F)
mean_patients <- apply(dat,2,mean)




patient_mean_function <- function(filename){
  dat <- read.csv(filename,header = F)
  rows_cols <- dim(dat)
  dat_cols <- rows_cols[2]
  means <- numeric(dat_cols) # empty vecter
  for(i in 1:dat_cols){
    mean[i] <- mean(dat[,i])
  }
  plot(mean,main=filename)
}
patient_mean_function("data/inflammation-01.csv")

x <- 10:1
N <- length(x)
y <- 9:0
for(i in 1:N){
  print(x[i])
  print(y[i])
}

for(i in x){
  print(i)
}



# This function plots the mean inflammation of each patient across all day
patient_mean_function <- function(filename){
  # read file filename into data frame dat
  # convert dat t a matrix
  dat <- read.csv(filename,header = F)
  # dim(dat) is a lenghth 2 vector c(row_number, col_number)
  rows_cols <- dim(dat)
  # take the second element to get the raw number
  dat_rows <- rows_cols[1]
  # make an empty vector with length equal to the number of rows
  means_day <- numeric(dat_rows) # empty vecter
  # run the loop "dat_rows"time, taking the mean of the i-th column at each step
  for(i in 1:dat_rows){
    # pull the i-th row out
    row_i <- dat[i,]
    row_i <- as.numeric(row_i)
    # dat[i,] is the i-th raw of dat
    mean_patients[i] <- mean(row_i)
  }
  plot(mean_patients, main=filename)
}
patient_mean_function("data/inflammation-01.csv")

