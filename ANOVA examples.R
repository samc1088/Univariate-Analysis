library(usethis)
library(ggplot2)

library(readr)
crmushroom <- read_csv("crmushroom.csv")
View(crmushroom)

onemush <- as.data.frame(crmushroom)

#here's how you do a oneway anova in R 
oneway <- aov(onemush$Mushroom_Diameter ~ onemush$Log_Type)

summary(oneway)



fucus <- read_csv("fucus.csv")

twofucus <- as.data.frame(fucus)

twoway <- aov(twofucus$Chl_a ~ twofucus$Experiment + 
                twofucus$Species * twofucus$Light)

summary(twoway)



harvest <- read_csv("splitplot-varietyxharvest.csv")

splitharvest <- as.data.frame(harvest)

splitplot <- aov (Yield ~ Block + Variety * Harvest + Error(Block:Variety),
                  data = splitharvest)
summary(splitplot)

summary(fm1 <- aov(Yield ~ Block + Variety * Harvest + Error(Block:Variety), data = oat.yield))