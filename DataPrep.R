library(dplyr)
library(ggplot2)

heartdisease <- read.csv("./data/heart.csv")
nutrition_health <- read.csv("./data/National_Nutrition_Health.csv")
UCIData <- read.csv("./data/heart_disease_uci.csv")

death <- ggplot(geom_point(data = heartdisease, aes(x = "i..age", y = "chol")))

UCIPlot <- ggplot(UCIData, aes(age, chol))+geom_point()
plot(UCIPlot)


##cleaning nutrition_health data
## only run once
nutrition_health <- nutrition_health %>% 
  select(10:16, 21, 22)

#risks
nutrition_health_risks <- nutrition_health %>% 
  filter(nutrition_health$Category == "Risk Factors")

nutrition_health_risks <- nutrition_health_risks %>% 
  select(2,6) %>% 
  aggregate(nutrition_health_risks$Data_Value, by=list(Topic=nutrition_health_risks$Topic), FUN=sum)


#disease
nutrition_health_disease <- nutrition_health %>% 
  filter(nutrition_health$Category == "Cardiovascular Diseases") 

nutrition_health_disease <- nutrition_health_disease %>% 
  select(2,6) %>% 
  aggregate(nutrition_health_disease$Data_Value, by=list(Topic=nutrition_health_disease$Topic), FUN=sum)

#hypertension
hypertension <- nutrition_health %>% 
  filter(nutrition_health$Topic == "Hypertension")

hypertension <- hypertension %>%
  select(3,4,7)

hypertension_age_standardized <- hypertension %>%
  filter(hypertension$Data_Value_Type == "Age-Standardized") %>%
  select(1,3) %>%
  group_by(hypertension$Indicator) %>%
  aggregate(by = list(hypertension$Indicator),
            FUN = sum)
  
hypertension_crude <-  hypertension %>%
  filter(hypertension$Data_Value_Type == "Crude")%>%
  select(1,3) %>% 
  group_by(hypertension$Indicator) %>%
  aggregate(by = list(hypertension$Indicator),
            FUN = sum)
