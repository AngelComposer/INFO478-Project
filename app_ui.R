# data

# widgets
# chart_widget <- selectInput(
#   inputId = "variable_name",
#   label = "label",
#   # choices = list of choices
# )
# 
# emission_type <- radioButtons(
#   inputId = "variable_name",
#   label = "label",
#   # choices = list of choices
# )

# pages
overview_page <- tabPanel(
  "Overview",
  
  titlePanel("Introduction"),
  
  mainPanel(
    p("The main focus of this project is analyzing the correlating factors 
      of heart disease. We hope that the general adult population can use
      this as a resource to help gain clarity on how various factors are 
      associated with heart disease and cardiac mortality."),
    p("Understanding heart disease as a whole is complex, however, education on 
      the topic is of vital importance because of its deadly track record.
      Heart disease consistently ranks as one of the top causes of premature
      death in the United States, killing well over half a million people a 
      year. According to the CDC, 1 in 4 deaths are the result of cardiovascular
      disease in the US. Given how deadly heart disease is, we sought to create
      a resource that analyzes some of the correlating factors."),
    p("Ultimately, many of the factors associated with cardivascular disease
      are genetic, but lifestyle choices can play an important role as well.
      In this report, we analyze some of these factos, such as cholestorol
      levels, the impact of hypertension, age, and so forth. Our report also 
      delves into some population statistics in order to paint a more complete 
      picture of the matter, in order to not ignore the demographic and 
      socioeconomic factors that play a vital role in understanding the impacts
      of heart disease on various populations.")
  )
)

interactive_pg_1<- tabPanel(
  "Age",
  
  titlePanel("Age Data"),
  
  sidebarLayout(
    sidebarPanel(
      # widgets
    ),
  
    mainPanel(
      # graphs
      plotlyOutput(outputId = "graph_one"),
      p("As seen some of the contributing factors to heart desease become more prevelant in 
        older people. FOr example, cholestoral seems to rise with older people compared to younger 
        people. Another thing to notice is people who are younger than 30 typically do not show any 
        sort of signs that could lead to heart disease."),
      p("paragraph 2")
    )
  )
)

interactive_pg_2 <- tabPanel(
  "Chest Pain",
  
  titlePanel("Chest Pain"),
  
  sidebarLayout(
    sidebarPanel(
      # widgets
    ),
    
    mainPanel(
      plotlyOutput(outputId = "graph_two"),
      p("From the plot, we can also see the different amounts of people who have
        experienced different chest pains. It was easier to count up the amounts
        of people who experienced different chest pain, but in this case,
        0 = typical angina, 1 = atypical angina, 2 = non-anginal pain, and
        3 = asymptomatic. As we can see, there were more people who experienced
        asymptomatic pain and had a heart diesase compared to typical, atypical
        and non-anginal pain.")
    )
  )
)

analysis_conclusion <- tabPanel(
  "Analysis and Conclusions",
  
  titlePanel("Analysis and Conclusions"),
  
  mainPanel(
    
    p("The most important conclusions we came to find were that populations
      with higher cholestorol were much more likely to suffer from 
      cardiovascular disease, as were those of older age. The effects of aging
      on heart disease were notable throughout our data analysis, as we expected
      given the compounding effect of lifestyle choices and environmental factors
      over the years. High cholestorol being associated with higher levels of 
      heart disease was also to be expected, as cholestorol levels can generally
      be used as a placeholder for diet, and thus, populations with unhealthier
      diets were also more likely to suffer from heart disease."),
    p("We also found various population statistics, with one of the more noatble
      ones looking at cardiovascular disease in both males and females. Finding
      that men were twice as likely to suffer from heart disease was unexpected,
      as we did not have a standout reason as to why. Furthermore, we also found
      that individuals who experienced chest pain were less likely to suffer
      from heart disease, which seemed somewhat counterintuitive, yet the 
      correlation was firm."),
    p("Ultimately, our findings helped us understand some of the correlating
      factors associated with heart disease and we hope it can be an
      educational resource for others as well.")
  )
)

ui <- navbarPage(
  "Heart Disease and Risk Factors",
  overview_page,
  interactive_pg_1,
  interactive_pg_2,
  analysis_conclusion
)