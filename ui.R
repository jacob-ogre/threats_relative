
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(
  fluidPage(
    br(),
    column(9,
      htmlOutput("five_factors_pie"),
      br(), br(), hr(),
      tags$blockquote(
        helpText("For this prototype we illustrate the concept of 
          apportioning threats by their importance to the species, but
          the values shown are only for illustration. Once 
          fully implemented, the sliders would automatically adjust to 
          sum to 1 and would only be editable by authorized users.")
      )
    ),
    column(3,
      wellPanel(
        helpText("Expert eliciation is used to adjust the sliders
          as needed to represent the relative importance of each
          of the five factors."
        ),
        sliderInput("factor_A",
          label = HTML("Factor A<br>(habitat loss)"),
          min = 0,
          max = 1,
          value = 0.5,
          step = 0.1
        ),
        sliderInput("factor_B",
          label = HTML("Factor B<br>(overutilization)"),
          min = 0,
          max = 1,
          value = 0.1,
          step = 0.1
        ),
        sliderInput("factor_C",
          label = HTML("Factor C<br>(disease/predation)"),
          min = 0,
          max = 1,
          value = 0.1,
          step = 0.1
        ),
        sliderInput("factor_D",
          label = HTML("Factor D<br>(inadequate reg.)"),
          min = 0,
          max = 1,
          value = 0.1,
          step = 0.1
        ),
        sliderInput("factor_E",
          label = HTML("Factor E<br>(other factors)"),
          min = 0,
          max = 1,
          value = 0.2,
          step = 0.1
        )
      )
    ),
    title = "Five threat factors",
    status = "primary",
    width = 12,
    collapsible = TRUE,
    collapsed = FALSE
    )
)
