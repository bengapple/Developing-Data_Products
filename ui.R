library(shiny)
shinyUI(pageWithSidebar( 
  headerPanel('Texas Department of Criminal Justice Execution Statistics for Years 1982 through 2014'), 
  sidebarPanel(
    h4('Tuning Criteria'),
    p('It may be helpful to run the search with blank criteria the first time just to get an idea of the range of the selection criteria'),
    p('All fields are case sensitive'),
    textInput('ageRestriction', 'Age',''),
    textInput('raceRestriction', 'Race',''),
    textInput('countyRestriction', 'County',''),
    #Help text
    helpText("Note: The histogram view will only show the observations", 
             "based on the entered criteria. If all crieria fields are",
            "blank the histograms will be based on the entrie data set."),
    
    submitButton('Submit')
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Last Name", plotOutput("plotLastName"),verbatimTextOutput("lastNameSummary")),
      tabPanel("First Name", plotOutput("plotFirstName"),verbatimTextOutput("firstNameSummary")),
      tabPanel("Age",  plotOutput("plotAge"),verbatimTextOutput("ageSummary")),
      tabPanel("Year", plotOutput("plotYear")),
      tabPanel("Race", plotOutput("plotRace"),verbatimTextOutput("raceSummary")),
      tabPanel("County", plotOutput("plotCounty"),verbatimTextOutput("countySummary")),
      #Help text
      helpText("The above represents the frequency of ", 
               "of executins based on the entered criteria.")
    )
  ) 
))

