# data

server <- function(input, output) {
  # graph 1
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