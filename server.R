
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(googleVis)
library(shiny)

shinyServer(function(input, output) {

  output$five_factors_pie <- renderGvis({
    scores <- c(input$factor_A, input$factor_B, input$factor_C,
                input$factor_D, input$factor_E)
    vars <- c("habitat", "overutilization", "disease/predation",
              "inadequate reg.", "other factors")
    dat <- data.frame(vars, scores)
    gvisPieChart(
      dat,
      options = list(height="350px",
                     chartArea="{left: 20, top: 50, width:'100%', height:'100%'}")
    )
  })
  

})
