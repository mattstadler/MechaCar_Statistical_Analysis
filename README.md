# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
-Vehicle length and ground clearnace provided non-random variance to mpg values (p < 0.05). The slope of the model is not considered to be zero because there was a significant correlation between some of the tested variables and MPG. The model predicts MPG of MechaCar prototypes reasonably well, with a R-squared of ~0.7. 

## Summary Statistics on Suspension Coils
-The variance of Lots 1 & 2 are meaningfully below the 100 pounds per square inch variance threshold. However, Lot 3 is not. Therefore, Lot 3 does not meet the deisng specification.

## T-Tests on Suspension Coils
-Lots 1 & 2 have mean PSIs not significantly unequal to 1500 (the populations cannot be said to have means differant than 1500), as their p-values are significantly larger than 0.05. However, Lot 3's population mean PSI can be said to be significantly different than 1500, with a p-value of 0.04. The total mean among all lots is barely unable to be shown significantly unequal to 1500 (p = 0.06).

## Study Design: MechaCar vs Competition
-We could test the following metrics: 0-60mph acceleration time, horse power, and MPG efficiency. To test for statistical difference among the MechaCar population and other cars, we could collect performance data across each of these metrics for MechaCars and competition (say, 5 different population sets). We should collect enough samples in each population group to give enough power to our statistical analyses (100 cars in each group would be a good starting point). Finally, we would perform T-tests between the MechaCar group and each competitor group for each metric (e.g. MechaCar horse power vs. Competitor A horse power). The null hypothesis is there is no meaningful difference between any of the two groups. The alternate hypothesis is there is a meaningful difference between the two groups. If our T-test shows statistically significant difference (p < 0.05) between any of the two compared groups, we could accept the alternate hypothesis.
