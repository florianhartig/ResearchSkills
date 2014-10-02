rm(list=ls(all=TRUE))

# Using the dataset PlantGrowth, Results from an experiment to compare yields (as measured by dried weight of plants) obtained under a control and two different treatment conditions.

str(PlantGrowth)

attach(PlantGrowth)

t.test(weight[group=='ctrl'], weight[group=="trt1"])

# Welch Two Sample t-test
# 
# data:  weight[group == "ctrl"] and weight[group == "trt1"] 
# t = 1.1913, df = 16.524, p-value = 0.2504
# alternative hypothesis: true difference in means is not equal to 0 
# 95 percent confidence interval:
#   -0.2875162  1.0295162 
# sample estimates:
#   mean of x mean of y 
# 5.032     4.661 


# testing against group 2

t.test(weight[group=='ctrl'], weight[group=="trt2"])


# Welch Two Sample t-test
# 
# data:  weight[group == "ctrl"] and weight[group == "trt2"] 
# t = -2.134, df = 16.786, p-value = 0.0479
# alternative hypothesis: true difference in means is not equal to 0 
# 95 percent confidence interval:
#   -0.98287213 -0.00512787 
# sample estimates:
#   mean of x mean of y 
# 5.032     5.526 


# but if we really would have done both tests, we would have had to correct for multiple testing


p.adjust(c(0.2504, 0.0479), method = "holm")

?p.adjust
# read http://webdev.cas.msu.edu/cas992/weeks/week10.html


# ANOVA
#
# but actually, if we have more that two groups, or a blocked design where
# we have for example males and females, and males and females are separated into two groups, or ages,
# were are typically using a different methods, which is anaova (analysis of variance)
#
#
# aov in R provides a wrapper to lm for fitting linear models to balanced or unbalanced experimental designs.
# The main difference from lm is in the way print, summary and so on handle the fit: this is expressed in the 
# traditional language of the analysis of variance rather than that of linear models.

# for our previous example

aovresult <- aov(weight~group)
summary(aovresult)

# Df Sum Sq Mean Sq F value Pr(>F)  
# group        2  3.766  1.8832   4.846 0.0159 *
#   Residuals   27 10.492  0.3886                 
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# just tells us that there is a difference between groups, not which group is different
# can now use post-hoc tests to find out which, or just use the table of lm()
# but be aware that summary(lm()) does not yet correct for multiple testing

# basically you can do aov(response ~ pred1 + pred2 + pred 3 ...)
# where pred can be any continous or categorical predictor as long as samples were created independently
# with only one variable, often called 1-way ANOVA, with more 2-way ANOVA
#
# there is a more complicated anova function Anova {car} in the car package
# that is often more appropriate when you want to do an anova for more complicated models

# see more examples, with more factors here http://www.statmethods.net/stats/anova.html

# Note: aov is designed for balanced designs, and the results can be hard to interpret without balance: 
# beware that missing values in the response(s) will likely lose the balance. If there are two or more 
# error strata, the methods used are statistically inefficient without balance, and it may be better to use lme in package nlme.


detach(PlantGrowth)