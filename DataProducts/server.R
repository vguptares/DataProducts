
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$outval <- renderText({ 
    paste("Your choice value is ", input$select1)
    
    #output$outval <- input$select1^2
  })
  output$numoutval <- renderText({ 
    paste("Your squared value is ", input$number1^2)
  })
  output$desc <- renderText({ 
    str<-paste("This shiny application shows the basic functionality of creating web pages")
    str<-paste(str,"using shiny framework in R, This shows usage of some widgets for taking user")
    str<-paste(str,"inputs from checkbox and also text input box. The input information is than ")
    str<-paste(str,"processed for an action on the server which returns the output.")
    str<-paste(str,"This output is displayed on the webpage for the user")
        
    })
  
  output$desc1 <- renderText({ 
    paste("Selections on the check boxes are shown in the first text box under Output  Section.")
  })
  output$desc2 <- renderText({ 
    paste("Output from action on textbox input is squared and put there.")
  })
  output$desc3 <- renderText({ 
    str1<-paste("Thankyou for visiting my shiny site")
    str1<-paste(str1,"Please send your feedback to abc@shiny.com")
    str1<-paste(str1,"\n")
  })
  

})
