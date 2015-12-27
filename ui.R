shinyUI(
  pageWithSidebar(
    headerPanel("Coursera: Developing Data Products Course Project"),
    sidebarPanel(
      selectInput("Distribution", "Choose a Distribution",
                  choices = c("Normal", "Exponential")),
      sliderInput("sampleSize", "Select Sample Size ",
                  min = 100, max = 5000,value = 1000, step = 100),
      conditionalPanel(condition = "input.Distribution == 'Normal'",
                       textInput("Mean", "Input Mean", 10),
                       textInput("sd", "Input Standard Deviation", 3)),
      conditionalPanel(condition = "input.Distribution == 'Exponential'",
                       textInput("lambda", "Input Lambda", 1)),
      selectizeInput("Color", label = "Choose a Color", choices = c("Red", "Blue", "Green"),
        options = list(create = TRUE))
    ),
    mainPanel(
      plotOutput("myPlot")
    )
  )
)