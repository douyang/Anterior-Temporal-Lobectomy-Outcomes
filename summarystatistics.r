setwd("C:\\Users\\David Ouyang\\Desktop\\StatisticalAnalysis\\Brains\\Englot2011Paper")

library(ggplot2)

data <- read.csv("sheet7.csv", stringsAsFactors = FALSE)

str(data)
qplot(data$weight, fill = data$year)

qplot(data$year, binwidth = 1)
table(data$year)

qplot(data$age)
table(data$age)

table(data$died)

table(data$pay1)
qplot(data$pay1)

qplot(data$los)
qplot(data$sex)
table(data$sex)

qplot(data$charges) + xlim(0,520000)

table(data$race)
table(data$zip)

 -9   1   2   3   4 
 62 242 310 272 450 

> table(data$region)

  0   1   2   3   4 
 22 247 288 425 354 


qplot(data$year, data$age, group = data$year, geom = "boxplot") + xlim(1989.5, 2008.5)+ ylim(0, 70) + geom_smooth(aes(group = 1))
ages <- ddply(data, "year", summarise, avgAge = mean(age))
qplot(ages$year, ages$avgAge) + xlim(1990, 2008)
