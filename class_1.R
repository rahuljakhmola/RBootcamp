2+2
2/2
2*2
5^7
a <- 2
b <- 5
a+b
rm(a)
rm(b)
a <- "hello"
b <- "goodbye"
a+b
###vectors
a <- c(1,2,3)
a
b <- 1
a+b
a <- TRUE
a <- true
a <- TRUE
b <- 5
a+b
a <- c("hi", "hello", "hola")
a
a <- c(2, TRUE, "hello")
a
typeof(a)
a <- TRUE
typeof(a)
class(a)
a <- 'hi'
typeof(a)
id_no <- c(1,2,3,4,5)
id_no
id_no <- c(1:5)
id_no
names <- c("anthony", "rahul", "raj", "bill", "huyen")
cars <- c("audi", "bmw", "ford", "tesla", "honda")
class_data <- id_no
a <- "2"
as.numeric(a)
class_data <- as.data.frame(id_no)
View(class_data)
typeof(id_no)
typeof(class_data)
class.data['names'] <- names
class_data['names'] <- names
View(class_data)

setwd("C:\\Users\\rahul\\OneDrive\\Desktop\\RBootcamp")
setwd("C:/Users/rahul/OneDrive/Desktop/RBootcamp")
getwd()

#ctrl+L
list=ls()
list

#rm(list=ls())
class_data['cars'] <- cars
View(class_data)

cars
cars[1]
cars[-1]
cars[1:3]
cars[c(1,5)]

names[3]
names[1:3]
names[6] <- "niharika"
new_names <- c("ronaldo","juventus","cr7")
names <- c(names, new_names)
names

length(names)
class_data[1]
class_data[,1]
class_data[1,]

class_data$id_no[2]
class_data$names

class_data[1,]
class_data[1:2,]
class_data[1:2,3]
class_data[1:2,"cars"]

write.csv(class_data,"class_data.csv")
rm(list=ls())

dir()

my_data <- read.csv("class_data.csv")
clean_data <- my_data[,2:4]
View(clean_data)

dir()
more_data <- read.csv("more_data.csv")
View(more_data)

merged_table <- merge(clean_data, more_data, by="id_no")
names(clean_data)
names(more_data)[1] <- "id_no"

test <- merged_table["names"] == "raj"
merged_table[test]

my_data <- read.csv("labelled_training_data - Copy.csv")
View(my_data)

summary(my_data)

head(my_data)[,1:5]
str(my_data)
my_data <- na.omit(my_data)
str(my_data)

install.packages("data.table")
library(data.table)

my_data_table <- as.data.table(my_data)
View(my_data_table)

my_pivot <- my_data_table[,.(isSTEM = max(isSTEM),
                             NumActions = mean(NumActions),
                             hints = sum(hint),
                             sum_of_correct = sum(correct)
                             ),by=list(ITEST_id)]
View(my_pivot)

isstem <- my_pivot[isSTEM==1]
length(isstem)

my_pivot_2 <- my_pivot[,.(count = NROW(ITEST_id)),by=list(isSTEM)]
View(my_pivot_2)

