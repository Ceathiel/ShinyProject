Simple Fuel Economy Application
========================================================
author: Rhea Lucas
date: Oct 3, 2016
autosize: true

The Application
========================================================

The Simple Fuel Economy application creates a box plot to display the fuel economy (miles per gallon) for a chosen year and vehicle type. 

The application is accessible through the ff. link:

<https://ceathiel.shinyapps.io/CourseraFuelEconomy/>

The r codes for the application are available in the ff. repository:

<https://github.com/Ceathiel/ShinyProject/tree/master>



Background on Data Used
========================================================

The data used by the application comes from the FuelEconomy dataset in Applied Predictive Modeling Package.

Shown below is the r code that can be used for loading the data if you want to view it in R.


```r
library(AppliedPredictiveModeling)
data(FuelEconomy)
```

Selections in the Application
========================================================

The application lets the user select among the choices below for vehicle type and year (2010, 2011, 2012) to be used for the plot.

Vehicle Type:
- 2-Seater
- Car
- Pickup Truck
- Station Wagon
- Special Purpose Vehicle
- Van
- Other


Default Plot in Application
========================================================

By default, the application plots data for 2010 for Car vehicle type for the initial display. 

The sample plot is shown below. 

![plot of chunk unnamed-chunk-2](fueleconomy-figure/unnamed-chunk-2-1.png)
