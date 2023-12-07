growth_data <- read.csv("/cloud/project/experiment2.csv")

##equation for population size
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

exponential_fun <- function(t) {
  
  N <- N0*exp(r*t)
  
  return(N)
  
}



N0 <- 8.595035 # pop size when t = 0

r <- 0.023605 # rate of growth from model 1

K <- 999979341 # number that N seems to bounce around when t gets high (model2)

##plotting data and model
ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=exponential_fun, colour="red")+
  geom_function(fun=logistic_fun, colour="blue")+
  scale_y_continuous(trans='log10')+
  labs(title = "Graph showing the log transformed exponential and logistic growth models", x = "Time (t)", y = "Population Size (N)")
  
  

 


