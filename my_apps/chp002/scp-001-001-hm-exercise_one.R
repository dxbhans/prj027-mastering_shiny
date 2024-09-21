
library(shiny)
library(lubridate)

ui <- fluidPage(
  textInput("name", "", placeholder = "Your name"),

  sliderInput("date_delivery", "When should we deliver?", value = ymd("2020-09-20"),
              min = ymd("2020-09-16"), max = ymd("2020-09-23")),

  sliderInput("pick_a_number", "Pick a number", value = 0, step = 5,
              min = 0, max = 100, animate = TRUE),

  selectInput("state", "Choose a state:",
              list(`East Coast` = list("NY", "NJ", "CT"),
                   `West Coast` = list("WA", "OR", "CA"),
                   `Midwest` = list("MN", "WI", "IA"))
  ),
  textOutput("result")
)

server <- function(input, output, session) {
  output$result <- renderText({
    paste("You chose", input$state)
  })}

shinyApp(ui, server)
