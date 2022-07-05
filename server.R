shinyServer(
function(input,output, session){
  
  output$MyPlot <- renderPlot({
    
    distTYpe <- input$Distribution
    size <- input$sampleSize
     if( distTYpe == "Normal"){
       
       randomVec <- rnorm(size, mean = as.numeric(input$Mean),sd= as.numeric(input$sd))
     }
  else{
     randomVec <- rexp(size, rate = 1/as.numeric(input$lambda))
  }
    hist(randomVec, col= "red" )
    })
}
  )
  
  
  
