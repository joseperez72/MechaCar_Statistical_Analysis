# Deliverable 1 

library(dplyr)
library(tidyverse)

mechacar_df <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df))

# Deliverable 2

suspension_df <- read.csv("Suspension_Coil.csv", stringsAsFactors = F)

total_summary <- suspension_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3

t.test(suspension_df$PSI, mu=1500)

sublot1 <- subset(suspension_df, Manufacturing_Lot == 'Lot1')
sublot2 <- subset(suspension_df, Manufacturing_Lot == 'Lot2')
sublot3 <- subset(suspension_df, Manufacturing_Lot == 'Lot3')

t.test(sublot1$PSI, mu=1500)
t.test(sublot2$PSI, mu=1500)
t.test(sublot3$PSI, mu=1500)

