shinyServer(
  function(input, output, session){
    output$myPlot <- renderPlot({
      distType <- input$Distribution
      size <- input$sampleSize
      
      if(distType == "Normal"){
        randomVec <- rnorm(size, mean = as.numeric(input$Mean), sd = as.numeric(input$sd))
      }
      
      else{
        randomVec <- rexp(size, rate = 1/ as.numeric(input$lambda))
      }
      
      hist(randomVec, col = input$Color, xlab = "", main = paste("Distribution of ", size, " random numbers"))
      
    })
  }
)