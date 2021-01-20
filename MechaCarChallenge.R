#Install and load dplyr
install.packages("dplyr")
library(dplyr)

#Deliverable 1: Linear Regression to Predict MPG
car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #read in data from source file csv
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_df)) #generate summary stats

#Deliverable 2: Create Visualizations for the Trip Analysis
coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #read in data from source file csv
summarize_coil <- coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table
summarize_coil #display summary table
summarize_coil_lots <- coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table
summarize_coil_lots #display summary table

#Deliverable 3: T-Tests on Suspension Coils
t.test(coil_df$PSI, mu = 1500) #check all lots against 1500
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot == 'Lot1'), mu = 1500) #check Lot1 against 1500
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot == 'Lot2'), mu = 1500) #check Lot2 against 1500
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot == 'Lot3'), mu = 1500) #check Lot3 against 1500
