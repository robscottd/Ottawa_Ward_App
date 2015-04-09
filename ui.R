library(shiny)
library(shinyIncubator)

shinyUI(fluidPage(
    progressInit(),
    
    # Application title
    headerPanel("Ottawa Occupations by Ward"),
    
    # Sidebar with a slider and selection inputs
    sidebarPanel(width = 4,
                 selectInput("selection", "Choose a ward:", 
                             choices = list("Ottawa Total"="Ottawa Total","Orleans"="OrlÈans","Innes"="Innes","Barrhaven"="Barrhaven",
                                            "Kanata North"="Kanata North","West Carleton-March"="West Carleton-March",
                                            "Stittsville-Kanata West"="Stittsville-Kanata West","Bay"="Bay",
                                            "College"="College","Knoxdale-Merivale"="Knoxdale-Merivale",
                                            "Gloucester-Southgate"="Gloucester-Southgate","Beacon Hill Cyrville"="Beacon Hill Cyrville", 
                                            "Rideau-Vanier"="Rideau-Vanier","Rideau-Rockcliffe"="Rideau-Rockcliffe",
                                            "Somerset"="Somerset","Kitchissippi"="Kitchissippi","River"="River",
                                            "Capital"="Capital","Alta-Vista"="Alta-Vista","Cumberland"="Cumberland",
                                            "Osgoode"="Osgoode","Rideau-Goulbourn"="Rideau-Goulbourn",
                                            "Gloucester-South Nepean"="Gloucester-South Nepean","Kanata-South"="Kanata-South")),
#                 actionButton("update", "Change"),
#                 hr(),
                 sliderInput("freq","Minimum Occupation Frequency:", min = 0,  max = 1000, value = 200),
                 sliderInput("max","Maximum Number of Occupations:", min = 1,  max = 50,  value = 20)
    ),
    # Show Word Cloud
    mainPanel(
        plotOutput("plot"),
        h4("Compiled from 2006 Census Data")
    )
))