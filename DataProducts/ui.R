
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

    # Show a plot of the generated distribution
    mainPanel(
      h1("Webpage Documentation"),
      h2("My Data product Project "),
      h3("Description "),
      textOutput("desc"),
      
      h3("Widgets on this page"),
      checkboxGroupInput("select1", 
                         label = h3("Select a value"), 
                         choices = list("Choice 1" = 1, 
                                        "Choice 2" = 2, "Choice 3" = 3),
                         selected = 1),
      numericInput("number1",label = h3("Enter a number"), value = 5),
      h3("Outputs : "),
      h4("Check Box Output - "),
      textOutput("desc1"),
      textOutput("outval"),
      h4("Text Box Output  -"),
      textOutput("desc2"),
      textOutput("numoutval"),
      textOutput("desc3")
    )
  )
)
