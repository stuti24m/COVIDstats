


page_plots <- dashboardPage(
  title = "Plots",
  header = dashboardHeader(disable = TRUE),
  sidebar = dashboardSidebar(disable = TRUE),
  body = dashboardBody(fluidRow(fluidRow(uiOutput("box_caseEvolution"))))
)