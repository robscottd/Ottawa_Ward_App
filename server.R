library(shiny)
library(shinyIncubator)


shinyServer(function(input, output) {
    # Define a reactive expression for the document term matrix
    terms <- reactive({
                getOccupations(input$selection)
            })
    
    # Make the wordcloud drawing predictable during a session
    wordcloud_rep <- repeatable(wordcloud)
    
    output$plot <- renderPlot({
        v <- terms()
        wordcloud_rep(names(v)[2:21], as.numeric(v[2:21]), scale=c(3,1),
                      min.freq = input$freq, max.words=input$max,
                      colors=brewer.pal(8, "Dark2"))
    })
})