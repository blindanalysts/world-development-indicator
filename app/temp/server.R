#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(data.table)
source('../../scripts/plotfunctions.R')



country_df <- fread('../../data/Country.csv')
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlotly({
    return (country_region_distribution(country_df))
  })

  output$selection <- renderPrint({
    d <- event_data("plotly_hover")
    if (is.null(d)) "Hover events appear here (unhover to clear)" else d
  })
  
    
})



