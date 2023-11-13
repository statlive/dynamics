## Load libraries, installing them if they are not yet installed.
libs <- c("shiny","ggplot2","nonlinearTseries")
using <- function(...) {
    libs<-unlist(list(...))
    req<-unlist(lapply(libs,require,character.only=TRUE))
    need<-libs[req==FALSE]
    if(length(need)>0){ 
        install.packages(need)
        lapply(need,require,character.only=TRUE)
    }
}
using(libs)

## Shiny ui, server, and app.
ui <- fluidPage(
    numericInput(inputId = "Num",
                 "r", value = 2.5, step=0.03),
    plotOutput(outputId = "PointPlot")
)

server <- function(input, output) {
    ## Based on https://www.magesblog.com/post/2012-03-17-logistic-map-feigenbaum-diagram/
    output$PointPlot <- renderPlot({
        my.r <- seq(2.5, input$Num, by=0.003)
        Orbit <- sapply(my.r, logisticMap,  start=0.1, n.sample=301, n.transient=(1000-301))
        Orbit <- as.vector(Orbit)
        r <- sort(rep(my.r, 301))
        feigenbaum <- as.data.frame(cbind(r, Orbit))
        ggplot(data = feigenbaum, aes(x=r, y=Orbit))+geom_point()
    })
}

shinyApp(ui = ui, server = server)
