# 09-23-2017

# Interacting with R
# Ctrl-Enter: ‘send’ the current line or the currently selected text to the R console using the Ctrl-Enter shortcut.
# Ctrl-1 and Ctrl-2 shortcuts:  allow you to jump between the script and the console windows.
# > : If R is ready to accept commands, the R console shows a > prompt.
# + : If R is still waiting for you to enter more data because it isn’t complete yet, the console will show a + prompt.
# esc : click inside the console window and press Esc
# <- Assignment Operator
# Alt + -: In RStudio, typing Alt + - (push Alt, the key next to your space bar at the same time as the - key) will write ` <- ` in a single keystroke.
# <- : is the assignment operator. It assigns values on the right to objects on the left. 
# You can also use = for assignments but not in all contexts so it is good practice to use <- for assignments. 


# setwd: set the working directory using the function setwd
#  RStudio GUI using the menu option Session -> Set Working Directory -> Choose Directory...
x <- 
unzip("data/r-novice-inflammation-data.zip")
my_data <- read.csv("data/inflammation-01.csv")
my_data[1,1]
my_data[1,5]
my_data[y,1]
my_data[1:5,1]
my_data[c(1,2,3,4,5),1]
my_row <- my_data[x,1]

my_data[c(1,3,5), c(2,4,6)]
my_data[c(1,2,3), ]
my_data[,c(1,2,3)]

my_data[,c("V1","V2","V3")]

col_17 <- my_data$V17

mean(col_17)
sd(col_17)
medium(col_17)
mean(my_data[1:4,3])
summary(my_data[1:4, c(1,2,3)])

x <- 5:1
x == 3
x[x < 3] # which x is less than 3

my_col <- my_data[,2]
my_data[my_col==0,2]
my_col[my_col==0]
sub_col <- my_col[my_col == 0]
other_sub_col <- my_col[my_col !=0]
length(sub_col)
length(other_sub_col)
sum(other_sub_col)
sum(sub_col)
length(sub_col) + length(other_sub_col)

dim(my_data[,c(-1,-2,-3)]) # dim:The data has 59 rows and 37  columns.
head(my_data) # head:

x[-4]
col_v1 <- my_data$V1
col_v2 <- my_data$V2 # my_data[, "V2"]
my_data$x <- my_data$V1 + my_data$V2 + my_data$V30
my_data$x <- col_v1 + col_v2
dim(my_data)
y <- c(1,2,3)
z <- c(2,3,4)
a <- y+z

# chang the number in the data
x[1] <- 0
x[1:3] <- c(1,2,3)

# conl+L clean console