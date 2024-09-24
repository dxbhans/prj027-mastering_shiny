
ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)

server1 <- function(input, output, server) {
  output$greeting <- renderText(paste0("Hello ", input$name))
}

server2 <- function(input, output, server) {
  string <- reactive(
    paste0("Hello ", input$name)
    )
  output$greeting <- renderText(string())
}

server <- function(input, output, server) {
  output$greeting <- renderText(paste0("Hello ", input$name))
}

shinyApp(ui, server)
