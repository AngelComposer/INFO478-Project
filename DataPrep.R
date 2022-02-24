library(dplyr)
library(ggplot2)

heartdisease <- read.csv("./data/heart.csv")
nutrition_health <- read.csv("./data/National_Nutrition_Health.csv")

death <- ggplot(geom_point(data = heartdisease, aes(x = "i..age", y = "chol")))
