library(dplyr)

# Reading in data files
mcc_mpg <- read.csv('Data/MechaCar_mpg.csv')
coils <- read.csv('Data/Suspension_Coil.csv')

# Mpg analysis
# Performing multiple linear regression model
lin_model_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, mcc_mpg)
lin_model_mpg
summary(lin_model_mpg)

# Doing bonus additional analysis to get more information
lin_model_vl_gc <- lm(mpg ~ vehicle_length + ground_clearance, mcc_mpg)
summary(lin_model_vl_gc)

vl <- lm(mpg ~ vehicle_length, mcc_mpg)
summary(vl)

gc <- lm(mpg ~ ground_clearance, mcc_mpg)
summary(gc)

# Suspension Coil Analysis, simple descriptive statistics
total_summary <- summarize(coils, Mean=mean(PSI), Meadian=median(PSI), 
  Variance=var(PSI), SD=sd(PSI), .groups='keep')
lot_summary <- coils %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Meadian=median(PSI), Variance=var(PSI), 
            SD=sd(PSI), .groups='keep')

# T-test on suspension coils
total_ttest <- t.test(coils$PSI, mu=1500)
total_ttest

lot_1_ttest <- t.test(subset(coils$PSI, coils$Manufacturing_Lot=='Lot1'), mu=1500) 
lot_1_ttest

lot_2_ttest <- t.test(subset(coils$PSI, coils$Manufacturing_Lot=='Lot2'), mu=1500) 
lot_2_ttest

lot_3_ttest <- t.test(subset(coils$PSI, coils$Manufacturing_Lot=='Lot3'), mu=1500) 
lot_3_ttest