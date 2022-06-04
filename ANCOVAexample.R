anc <- read.csv("ANCOVA.csv")

#extremely simple in R, literally the same as a regular
# ANOVA, but + the continuous variable
ancova <- aov (anc$BP ~ anc$Gender + anc$Age)

#really doesn't matter if you do one of these because there are 2 levels
# meaning any difference is obviously between these two levels
TukeyHSD(ancova)

summary(ancova)

#assumptions
# covariates (continout variables) should not be highly correlated
# residuals should be normally distributed 
# homogeneity of variance 