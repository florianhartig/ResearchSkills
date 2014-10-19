# Classical example from Student (1908) The probable error of the mean. Biometrika, 6, 20. The data which show the effect of two soporific drugs (increase in hours of sleep compared to control) on 10 patients. 

hist(extra ~ group, data = sleep, xlab = "Treatment", ylab = "Extra hours sleep")

## Traditional interface
with(sleep, t.test(sleep$extra[sleep$group == 1], extra[group == 2]))
## Formula interface
t.test(extra ~ group, data = sleep)
