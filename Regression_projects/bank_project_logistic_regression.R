View(bank.full)
attach(bank.full)
install.packages(c('caret'))
library(caret)
dmy <- dummyVars("~ .", data = bank.full, fullRank = T)
bank_data <- data.frame(predict(dmy, newdata = bank.full))
str(bank_data)
attach(bank_data)
summary(bank.full)#1s1 business model
sd(age)# 2nd business model
sd(balance)
sd(day)
sd(duration)
var(age)
var(balance)
var(day)
var(duration)
library(e1071)
skewness(age)#3rd business model
skewness(balance)
skewness(day)
skewness(duration)
kurtosis(age)#4th business model
kurtosis(balance)
kurtosis(day)
kurtosis(duration)
library(graphics)
plot(bank.full)
qqPlot(bank_data)
model_bank <- lm(y~.,data = bank_data)
summary(model_bank)
plot(model_bank)
model1_bank <- glm(y~.,data = bank_data,family ="binomial" )
summary(model1_bank)
exp(coef(model1_bank))
plot(model1_bank)
prob <- predict(model1.computer,type = c("responce"),bank_data)
prob
confusion1<- table(prob>0.05,bank_data$y)
confusion1
