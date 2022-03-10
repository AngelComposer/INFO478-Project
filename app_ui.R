# data

# widgets

# pages
overview_page <- tabPanel(
  "Overview",
  
  titlePanel("Introduction")
)

interactive_pg_1<- tabPanel(
  "Model 1",
  
  titlePanel("Insert Title")
)

interactive_pg_2 <- tabPanel(
  "Model 2",
  
  titlePanel("insert Title")
)

analysis_conclusion <- tabPanel(
  "Analysis and Conclusions",
  
  titlePanel("Analysis and Conclusions")
)

ui <- navbarPage(
  "Heart Disease and Risk Factors",
  overview_page,
  interactive_pg_1,
  interactive_pg_2,
  analysis_conclusion
)
