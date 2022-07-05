library(shiny)
shinyServer(
  pageWithSidebar(
  
    headerPanel("My first Shiny App"),
  
    sidebarPanel(
      selectInput("Distribution","Please select Distribution Type",
                  choices = c("Normal","Exponential")),
      sliderInput("sampleSize","Please select Sample Size: ",
                  min = 100,max = 5000, value = 1000,step = 100),
      conditionalPanel(condition = "input.Distribution =='Normal'",
                       textInput("Mean","Please select the mean",10),
                       textInput("sd","Please select Standard Deviation",3)),
      conditionalPanel(condition = "input.Distribution== 'Exponential'",
                       textInput("lambda","Please select Exponential Lambda:",1))
    ),
    mainPanel(
      plotOutput("MyPlot")
    )
          
  )   
      
      
)
