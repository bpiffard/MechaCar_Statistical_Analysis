# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
!(full linear regression model)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/linear_reg_mpg.png]

!(summary of full linear regression model)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/lin_reg_mpg_summary.png]

Only two of the five independent variables contribute a non-random amount of variance to the mpg values: vehicle length and ground clearance. The relationship appears to be positive. The slope for the model is above zero, as the summation of the coeffecients for each independent variable is over zero. 

While the model predicts 71% of the variance in mpg, due to the lack of significant variables, this particular model may be overfitted. Doing a multiple linear regression model with vehicle length and ground clearance alone may be a better model. See those results below.

!(linear regression model with vehicle length and ground clearance)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/lin_reg_vl_gc.png]

!(linear regression model with only vehicle length)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/lin_reg_vl.png]

!(linear regression model with only ground clearance)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/lin_reg_gc.png]

Vehicle length and ground clearance appear to predict 67% of the variance. This is only 3% less than the overall multiple linear regression model. Looking at the r^2 values from simple linear regressions with those variables individually results in 0.37 for vehicle length, and 0.11 for ground clearance. Interestingly, their combined predictive power seems to be greater than using the variables alone. It seems, then, that this multiple linear regression model is likely the most effective and efficient model using the data provided.

## Summary Statistics on Suspension Coils

!(summary statistics for all manufacturing lots)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.png]

!(summary statistics for manifacturing lot 3)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.png]

The design specifications state that the variance of the suspension coils must not exceed 100 pounds per square inch. It appears that the overall variance for the coils meets this spec, with a variance of 62.29. However, it appears that the suspension coils for lot 3 do not. They have a variance of 170.29. These coils, then, are likely to be faulty, and the manufacturing equipment should recieve maintenance before more coils are produced. 

However, this is taking the term 'variance' in the specification to mean the statisitcal measure, and not the colloquial meaning of the word. The statistical variance would be PSI^2, which is not simply pounds per square inch, the measure used in the spec. For a more accurate measure of how much the coils vary in practical terms, we would look to the standard deviation. All of those are well below the specification. That would mean the coils were being manufcatured correctly.

To make things more confusing, suspension coils are not typically measure in psi, but pounds per inch, meaning the amount of pounds needed to compress the coil one inch. The use of PSI suggests that the suspension is air, but then would not be called a coil. Additionally, the recorded PSI numbers are much to high to refer to air suspension. To get an accurate analysis of the data, more information would need to be gathered from the manufacturing plant. The questions include, what type of suspension is being manufactured, are the correct pressure tests being given for the suspension type, and finally, what type of 'variance' does the specification refer.

## T-Tests on Suspension Coils

!(t-test for all lots)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/total_ttest.png]

!(t-test for lot 1)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/lot_1_ttest.png]

!(t-test for lot 2)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/lot_2_ttest.png]

!(t-test for lot 3)[https://github.com/bpiffard/MechaCar_Statistical_Analysis/blob/main/Images/lot_3_ttest.png]

Using a population mean of 1,500, the t-tests show that only the mean PSI value of manufactruring lot 3 differed from the population mean enough to be statsitically significant. This suggests that an error occured in the manufacturing process for this lot. This also suggests that the specification stated in the Summary Stats anaylsis indeed referred to the statistical variance.

## Study Design: MechaCar vs Competition
According to a recent survey [conducted by Statista](https://www.statista.com/chart/13075/most-important-factors-when-buying-a-car/), fuel effeciency is the most important metric that consumers consider when buying a new car. Thus in thinking about quantifying how MechaCar performs against the competition, I think looking at gas mileage would be the best option. It would require two tests, one with the average mpg on the highway, and mpg from city driving. 

This anaylsis would involve comparing population means of mpg averages between different car brands. Thus the most appropriate statistical test for this would be a one-way ANOVA test. To make the test more practically helpful, it would be useful to test MechaCars gas mileage only to cars of the same class and transmission type. Comparing the fuel effeciency of a sedan to a truck, for example, isn't very interesting.
