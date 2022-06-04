library (ggplot2)

simple1 <- read.csv("simplelinear.csv")

simple <- as.data.frame(simple1)
#for a simple linear regression, it's y ~ x 
SLR <- lm(simple$Growth.Rate ~ simple$Temperature)

summary (SLR)

Temperature <- as.data.frame(simple$Temperature)
Growth.Rate <- as.data.frame(simple$Growth.Rate)

#here is how you plot a simple linear regression using ggplot, se= FALSE removes
#the weird shadowy thing
ggplot(simple, aes (x=Temperature, y=Growth.Rate)) + geom_point() + 
labs(x = "Temperature C", y="Growth Rate") + geom_smooth(method = lm,se=FALSE)


# Multiple Regression Using R 

multiplereg <- read.csv("multiplereg.csv")
#this is how you do multiple regression in R 
MR <- lm(multiplereg$Sp.Gr. ~ multiplereg$Nitrogen + multiplereg$Phosphorus)

summary(MR)

#Correlation using R 
bird <- read.csv("bird.csv")

cor(bird$winglength, bird$taillength, method = "pearson")

ggplot(bird, aes(x=winglength, y=taillength)) + geom_point() + labs(x = "Wing Length",
  y = "Tail Length")
