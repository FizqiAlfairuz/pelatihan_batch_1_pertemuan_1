# input data
data <- read.csv("~/mall_customers.csv")
View(data)

# missing value detection
summary(is.na(data))
data$Annual_income[is.na(data$Annual_income)] = mean(data$Annual_income, na.rm=TRUE)

# dplyr
install.packages("dlpyr")
library(dplyr)

# filter
fil_data1 <- data[data$CustomerID == 1:10,]
fil_data2 <- filter(data, CustomerID == 1:10)

# select
sel_data1 <- data[c("CustomerID", "Gender", "Annual_income")]
sel_data2 <- select(data, c("CustomerID", "Gender", "Annual_income"))

# arrange
arrange(data, Annual_income)
arrange(data, desc(Spend_score))

# mutate
data$Annual_income_ <- data$Annual_income*1000
data <- mutate(data, Annual_income_dollar = Annual_income*1000)

# dataset profile
str(data)
summary(data)

# editing column names
colnames(data)[1] <- "ID"
colnames(data)[6:7] <- c("annual_incm", "annual_incm2")

# editing row names
rownames(data$Age)[4] <- "Female"
