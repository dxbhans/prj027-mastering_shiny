
library(shiny)

ui <- fluidPage(
  plotOutput("plot", width = "700px", height = "300px"),
  dataTableOutput("table")
)

server <- function(input, output, session) {
  output$plot <- renderPlot(plot(1:5), res = 96, alt = "a scatterplot of five random numbers")
  output$table <- renderDataTable(mtcars, options = list(pageLength = 5, searching = FALSE, ordering = FALSE))
  }

shinyApp(ui, server)
