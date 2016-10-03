
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(AppliedPredictiveModeling)
library(ggplot2)


shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
      
      #load Fuel Economy Data
      data(FuelEconomy)
      
      #check dataset to be used based on input
      plotdata <- eval(parse(text = input$dataset))
      
      #subset data based on car type selected (default is car)
      plotdata <- plotdata[grepl(input$cartype, plotdata$CarlineClassDesc),]
      
      #plot data
      p <- ggplot(plotdata, aes(CarlineClassDesc, FE, color=CarlineClassDesc))
      p + geom_boxplot() +labs(title="Fuel Economony for Chosen Vehicle Type")+
          labs(y="Miles Per Gallon", x="Vehicle Type")+
          scale_colour_discrete(name="Vehicle Type")
      
  })

})
