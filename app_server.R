# data
library(ggplot2)
library(tidyr)
library(dplyr)
library(plotly)

heartdisease <- read.csv("./data/heart.csv")
nutrition_health <- read.csv("./data/National_Nutrition_Health.csv")
UCIData <- read.csv("./data/heart_disease_uci.csv")
UCIData2 <- read.csv("./data/heart_cleveland_upload.csv")
UCIPlot <- ggplot(UCIData, aes(age, chol))+geom_point()

server <- function(input, output) {
  # graph 1
     #output$graph <- renderPlotly({
       #graph <- ggplot(hd) +
       #  geom_polygon(hd
        #   mapping = aes_string(x = "hd$age", y = "hd$chol", group = "",
        #                        fill = hd$chol),
       #    color = "black", size = ) +
       #  ggtitle("title") +
       #  blank_theme +
       #  easy_center_title() +
      # 
     #  ggplotly(graph)
   # })

  # Graph 1
     output$graph_one <- renderPlotly({
       graph_one <- UCIPlot
       ggplotly(graph_one)
     })
       
       
       
  # graph 2
  #   output$graph <- renderPlotly({
  #     graph <- ggplot(data) +
  #       geom_polygon(
  #         mapping = aes_string(x = "", y = "", group = "",
  #                              fill = input$(from widget)),
  #         color = "", size = ) +
  #       ggtitle("title") +
  #       blank_theme +
  #       easy_center_title() +
  #     
  #     ggplotly(graph)
  #  })

# other values
  # output$variable_name <- renderText({
  #   return(variable_name)
  # })
}
