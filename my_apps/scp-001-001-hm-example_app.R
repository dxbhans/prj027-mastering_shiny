## Only run this example in interactive R sessions
if (interactive()) {
  options(device.ask.default = FALSE)

  shinyApp(
    ui = fluidPage(
      numericInput("n", "n", 10),
      plotOutput("plot")
    ),
    server = function(input, output) {
      output$plot <- renderPlot( plot(head(cars, input$n)) )
    }
  )

  # shinyAppDir(system.file("examples/01_hello", package="shiny"))


  # The object can be passed to runApp()
  # app <- shinyApp(
  #   ui = fluidPage(
  #     numericInput("n", "n", 20),
  #     plotOutput("plot")
  #   ),
  #   server = function(input, output) {
  #     output$plot <- renderPlot( plot(head(cars, input$n)) )
  #   }
  # )
  #
  # runApp(app)
}
