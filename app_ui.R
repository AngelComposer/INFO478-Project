# data

# widgets
chart_widget <- selectInput(
  inputId = "variable_name",
  label = "label",
  # choices = list of choices
)

emission_type <- radioButtons(
  inputId = "variable_name",
  label = "label",
  # choices = list of choices
)

# pages
overview_page <- tabPanel(
  "Overview",
  
  titlePanel("Introduction"),
  
  mainPanel(
    p("paragraph 1"),
    p("paragraph 2")
  )
)

interactive_pg_1<- tabPanel(
  "Model 1",
  
  titlePanel("Insert Title"),
  
  sidebarLayout(
    sidebarPanel(
      # widgets
    ),
  
    mainPanel(
      # graphs
      # plotlyOutput(outputId = "")
      p("paragraph 1"),
      p("paragraph 2")
    )
  )
)

interactive_pg_2 <- tabPanel(
  "Model 2",
  
  titlePanel("insert Title"),
  
  sidebarLayout(
    sidebarPanel(
      # widgets
    ),
    
    mainPanel(
      # graphs
      # plotlyOutput(outputId = "")
      p("paragraph 1"),
      p("paragraph 2")
    )
  )
)

analysis_conclusion <- tabPanel(
  "Analysis and Conclusions",
  
  titlePanel("Analysis and Conclusions"),
  
  mainPanel(
    
    p("paragraph 1"),
    p("paragraph 2")
  )
)

ui <- navbarPage(
  "Heart Disease and Risk Factors",
  overview_page,
  interactive_pg_1,
  interactive_pg_2,
  analysis_conclusion
)