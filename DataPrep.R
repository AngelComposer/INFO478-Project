library(dplyr)
library(ggplot2)

heartdisease <- read.csv("./data/heart.csv")
nutrition_health <- read.csv("./data/National_Nutrition_Health.csv")
UCIData <- read.csv("./data/heart_disease_uci.csv")

death <- ggplot(geom_point(data = heartdisease, aes(x = "i..age", y = "chol")))

UCIPlot <- ggplot(UCIData, aes(age, chol))+geom_point()
plot(UCIPlot)
