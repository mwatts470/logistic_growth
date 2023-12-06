#Script to estimate the model parameters using a linear approximation

##load package
library(dplyr)

##read in the data
growth_data <- read.csv("/cloud/project/experiment2.csv")

#Case 1. K >> N0, t is small
##carrying capacity is much larger than pop size, early on
data_subset1 <- growth_data %>% filter(t<660) %>% mutate(N_log = log(N))
##looking at the data, t < 600 is at this point
model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K
##carrying capacity = population size. K ~ 1000000000, and t > 540 when this is reached

data_subset2 <- growth_data %>% filter(t>600)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)
