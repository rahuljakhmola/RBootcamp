## creating features
train <- read.csv('train_students.csv')
test <- read.csv('test_students.csv')


## running the algorithm
library(randomForest)
Rf_train <- randomForest(formula = isSTEM ~., data = train[,-1], importance = TRUE )
Rf_test <- predict(Rf_train, test[,-(1:2)], type = "class")


# Confusion Matrix for Random Forest
tabRFtest <- table(Rf_test>0.5, test$isSTEM)
tabRFtest
CARTRFaccuracy <- sum(diag(tabRFtest))/sum(tabRFtest)
CARTRFaccuracy