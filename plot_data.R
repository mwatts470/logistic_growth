#Script to plot the logistic growth data
file.choose()

##read in the data
growth_data <- read.csv("/cloud/project/experiment2.csv")
growth_data

##load the ggplot package
library(ggplot2)

##plot time against pop size
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

##plot the same, but transformed
ggplot(aes(t, N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')


