
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
year = c("2010" = "cars2010",
         "2011" = "cars2011",
         "2012" = "cars2012")


shinyUI(fluidPage(

  # Application title
  titlePanel("Fuel Economy for Different Vehicle Types"),
  
  h5("This application uses the FuelEconomy dataset in Applied Predictive Modeling Package to create a box plot 
      showing the miles per gallon based on chosen year and vehicle type."),
     
  h5("By default, Year 2010 data for cars are displayed. You may modify the plot using the controls on the sidebar."),
  
  h5("Code for this application may be found in https://github.com/Ceathiel/ShinyProject/tree/master"),

  # Sidebar 
  sidebarLayout(
      sidebarPanel(
    
      selectInput("dataset", "Year:",
                      choices=year,
                      selected=year[1]),
      
      radioButtons("cartype", "Vehicle Type:",
                  c("2-Seater" = "2Seaters",
                    "Car" = "Cars",
                    "Pickup Truck"= "PickupTruck",
                    "Station Wagon" = "SmallStationWagons",
                    "Special Purpose Vehicle" = "SpecialPurposeVehicle",
                    "Van" = "Van",
                    "Other" = "Other"),
                  selected = c("Car" = "Car"))
    ),

    # main panel with plot
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
