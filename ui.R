#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
#set working directory

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))

# Predict Next Word application UI defined 

# Navigation Bar - Title, Author, Date
shinyUI(navbarPage("Capstone Project",
                   tabPanel("Predict the Next Word",
                            HTML("<strong>Author: Soroush Rasti </strong>"),
                            br(),
                           # img(src = "Coursera.png"),
                  #title for left side of page
                            titlePanel(""),
                  # Sidebar for user to enter part of a sentence 
                            sidebarLayout(
                              sidebarPanel(
                               # helpText("This box is for the user to enter the words that will be used in the next word prediction."),
                                textInput("inputString", "Text Input",value = ""),
                                br(),
                                br(),
                             #   img(src = "Swiftkey.png"),
                              #  br(),
                              #  br(),
                              #  br(),
                              #  br()
                              ),
                  # Main panel to display the results of the word prediction
                              mainPanel(
                                strong("Next word:"),
                                verbatimTextOutput("prediction"),
                                strong("Text entered:"),
                                tags$style(type='text/css', '#text1 { color: black;}'),
                                textOutput('text1'),
                                br(),

            
                              )
                            )
                            
                   )
)
)