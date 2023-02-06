
# Use relative file paths as in ../data/mydata.Rdata to keep your project portable

# read in data
mydata <- read.table("../data/mydata.txt", sep="", header = TRUE)

# do some analysis, such as LR 
fm <- lm(y ~ x + I(x^2), data = mydata)
summary(fm)


# do some basic plotting
newdat <- seq(min(mydata$x), max(mydata$x), length = 100)
preds <- predict(fm, newdata = data.frame("x" = newdat), se.fit = TRUE)

# open pdf connection
pdf("../results/myplot.pdf", width = 10, height = 10)
# adjust some graphical parameters
par(mar=c(3,2.5,1,1), mgp=c(1.8,0.1,0), tcl= 0.3, pty="s", las = 1, cex.axis = 1.3, cex.lab = 1.3)
with(mydata, plot(y ~ x, xlab= "predictorname", ylab="responsename"))
lines(newdat, preds$fit, lwd= 2)
lines(newdat, preds$fit + 2 * preds$se.fit, lty = 2, lwd= 2, col = "gray50")
lines(newdat, preds$fit - 2 * preds$se.fit, lty = 2, lwd= 2, col = "gray50")
legend("topleft", legend=c("LR", "95% CI"), col = c("black", "gray50"), lty=c(1,2), lwd=2, bty="n")

# close pdf connection
dev.off()
