
library(shiny)
shinyUI(fluidPage(
    titlePanel("Data Science Assignment"),
    sidebarLayout(
      sidebarPanel(
        numericInput("numeric", "how many random numbers should be plotted?",
                     value = 1000, min = 1, max = 1000, step = 1),
        sliderInput("sliderX", "Pick minimum and Maximum X values",
                    -100, 100, value= c(-50, 50)),
        sliderInput("sliderY", "Pick minimum and Maximum Y values",
                    -100, 100, value= c(-50, 50)),
        checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE),
        checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = TRUE),
        checkboxInput("Show title", "Show/Hide title")
      ),
          mainPanel(
          h3("Random points"),
          plotOutput("plot1")
          ) 
        )
))
