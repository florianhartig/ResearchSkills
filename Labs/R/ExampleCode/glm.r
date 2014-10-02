rm(list=ls(all=TRUE))

# general comment: the linear model command lm() was in the practicals from Monday, example

fit = lm(airquality$Temp~airquality$Ozone)
summary(fit)

# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept)      69.41072    1.02971   67.41   <2e-16 ***
#   airquality$Ozone  0.20081    0.01928   10.42   <2e-16 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 6.819 on 114 degrees of freedom
# (37 observations deleted due to missingness)
# Multiple R-squared:  0.4877,  Adjusted R-squared:  0.4832 
# F-statistic: 108.5 on 1 and 114 DF,  p-value: < 2.2e-16

plot(airquality$Ozone, airquality$Temp)
abline(fit, col = "blue")

# residual analysis

plot(fit)

# shows that a linear term alone is maybe not sufficient. We can add a quadratic term

fit2 = lm(airquality$Temp~airquality$Ozone + I(airquality$Ozone^2))
summary(fit2)
plot(airquality$Ozone, airquality$Temp)
points(fit2$model[,2], predict(fit2), col = "blue")

# here, we look at the glm command. The glm is a generalization of lm. We could create
# a model identical to lm() by glm(formula, family = gaussian(link = "identity")), but 
# the advantage is that glm has more options, among them the following defaults
#
# binomial(link = "logit")
# gaussian(link = "identity")
# Gamma(link = "inverse")
# inverse.gaussian(link = "1/mu^2")
# poisson(link = "log")
# quasi(link = "identity", variance = "constant")
# quasibinomial(link = "logit")
# quasipoisson(link = "log")

# but step for step ... let's look at an example for binomial data

library(effects) 
data(TitanicSurvival)
head(TitanicSurvival)
str(TitanicSurvival)

# visualizing associations see http://www.statmethods.net/advgraphs/mosaic.html
# Mosaic Plot Example
#install.packages("vcd")
library(vcd)
mosaic(~ sex + passengerClass + survived, shade=TRUE, legend=TRUE) 



attach(TitanicSurvival)

plot(survived ~ age)

surv <- as.numeric(survived)-1

plot(surv ~ age)

# now, the glm is basically the same as lm(), just that you specify the family
fmt <- glm(surv ~ age  + sex + passengerClass, family=binomial)
summary(fmt)

# if you want an ANOVA
library(car)
Anova(fmt)

detach(TitanicSurvival)



## Poisson example:

# data
cfc <- data.frame(
  stuecke = c(3,6,8,4,2,7,6,8,10,3,5,7,6,7,5,6,7,11,8,11,13,11,7,7,6),
  attrakt = c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5) 
)
attach(cfc)
plot(stuecke ~ attrakt)

fm <- glm(stuecke ~ attrakt, family=poisson)
summary(fm)

# predictions

newattrakt <- c(1,1.5,2,2.5,3,3.5,4,4.5,5)
preds <- predict(fm, newdata=data.frame("attrakt"=newattrakt))
lines(newattrakt, exp(preds), lwd=2, col="green")

# same with 95% confidence interval:
preds <- predict(fm, newdata=data.frame("attrakt"=newattrakt), se.fit=T)
str(preds)
lines(newattrakt, exp(preds$fit), lwd=2, col="green")
lines(newattrakt, exp(preds$fit+2*preds$se.fit), lwd=2, col="green", lty=2)
lines(newattrakt, exp(preds$fit-2*preds$se.fit), lwd=2, col="green", lty=2)

detach(cfc)
