# simulate some data with one uniform predictor and a normaly distributed response dependant on the predictor; n = 100
# set working directory to the folder ExampleProject
n <- 100
set.seed(27)
x <- runif(n, 0, 20)
y <- 100 + 0.1 * x1 + 0.05 * x^2 + rnorm(n, 0, 2)

mydata <- data.frame(y, x)
write.table(mydata, "data/mydata.txt", row.names = FALSE)
