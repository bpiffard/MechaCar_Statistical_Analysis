# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Only two of the five independent variables contribute a non-random amount of variance to the mpg values: vehicle length and ground clearance. The relationship appears to be positive. The slope for the model is above zero, as the summation of the coeffecients for each independent variable is over zero. 

While the model predicts 71% of the variance in mpg, due to the lack of significant variables, this particular model may be overfitted. Doing a multiple linear regression model with vehicle length and ground clearance alone may be a better model. See those resulkts below

Vehicle length and ground clearance appear to predict 67% of the variance. This is only 3% less than the overall multiple linear regression model. Looking at the r^2 values from simple linear regressions with those variables individually results in 0.37 for vehicle length, and 0.11 for ground clearance. Interestingly, their combined predictive power seems to be greater than using the variables alone. It seems, then, that this multiple linear regression model is likely the most effective and efficient model using the data provided.
