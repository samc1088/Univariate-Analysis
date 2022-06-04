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
#you start with your dependent variable, then a ~ denotes the independent 
#variables, the "+" denotes the second independent variable. the "*" is what 
# allows you to test for an interaction. It will also test each of the factors
# independently 
twoway <- aov(twofucus$Chl_a ~ twofucus$Experiment + 
                twofucus$Species * twofucus$Light)

summary(twoway)



harvest <- read_csv("splitplot-varietyxharvest.csv")

splitharvest <- as.data.frame(harvest)
#This is how you do a split plot in R, "+ Error(Block:Variety)" is made up of
# the blocking factor and the main plot 

splitplot <- aov (Yield ~ Block + Variety * Harvest + Error(Block:Variety),
                  data = splitharvest)
summary(splitplot)


splitplottest <- read_csv("splitplottest.csv")

sp2 <- as.data.frame(splitplottest)
# this was my verification that this method works! 
split2 <- aov(Yield ~ Block + Nitrogen * Cover + Error(Block:Nitrogen),
              data = sp2)

summary(split2)
