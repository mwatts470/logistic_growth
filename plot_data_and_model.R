#Script to plot data and model

growth_data <- read.csv("/cloud/project/experiment2.csv")

##equation for population size
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 1879 # pop size when t = 0
  
r <- 0.023605 # rate of growth from model 1
  
K <- 999979341 # number that N seems to bounce around when t gets high (model2)

##plotting data and model
ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point() +
  scale_y_continuous(trans='log10') ##transform the data for plotting



sink(file = "package-versions.txt")
sessionInfo()
sink()


