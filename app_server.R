# data
library(ggplot2)
library(tidyr)
library(dplyr)
#library(ggplotly)

hd <- read.csv("./data/heartdisease.csv")

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
     #output$graph <- renderPlotly({
       graph <- ggplot(hd) +
         geom_polygon(hd, 
           mapping = aes_string("ï..age", y = "chol",
                                       fill = hd$chol)
         ) +
        ggtitle("Age Data")
       plot(graph)
     #})
       
       
       
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
