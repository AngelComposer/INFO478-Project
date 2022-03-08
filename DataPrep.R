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

#age-standardized
hypertension_age_standardized <- hypertension %>%
  filter(hypertension$Data_Value_Type == "Age-Standardized") %>%
  select(1,3) 

hypertension_age_standardized <- hypertension_age_standardized %>%
  group_by(hypertension_age_standardized$Indicator) %>%
  summarize(mean = mean(hypertension_age_standardized$Data_Value_Alt))

#crude
hypertension_crude <-  hypertension %>%
  filter(hypertension$Data_Value_Type == "Crude")%>%
  select(1,3) 

hypertension_crude <- hypertension_crude %>% 
  group_by(hypertension_crude$Indicator) %>%
  summarize(mean = mean(hypertension_crude$Data_Value_Alt))


#hypertension stats
hypertensions_stats <- nutrition_health %>% 
  filter(nutrition_health$Topic == "Hypertension") %>%
  select(3,7:9)

hypertensions_stats <- hypertensions_stats %>%
  filter(hypertensions_stats$Indicator == "Prevalence of hypertension among US adults (18+); NHANES") %>%
  select(2:4)

#age 
hypertensions_stats_age <- hypertensions_stats %>%
  filter(hypertensions_stats$Break_Out_Category == "Age") %>%
  select(1,3)

hypertensions_stats_age <- hypertensions_stats_age %>%
  group_by(hypertensions_stats_age$Break_Out) %>%
  summarize(mean = mean(hypertensions_stats_age$Data_Value_Alt))
