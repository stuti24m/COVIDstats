body_about <- dashboardBody(
  fluidRow(
    fluidRow(
      column(
        box(
          title = div("About this project", style = "padding-left: 20px", class = "h2"),
          column(
            h3("The COVstat"),
            "This dashboard demonstrates some recent news about the Coronavirus pandemic. 
            This App is a simulator, that reads from the John Hopkins dataset, and shows some data related to mortality,  
            recovery, infected, and etc..",
            tags$br(),
            h3("COVID-19 Social Distancing"),
            "Please stay safe and respect social distancing, which can be tough on people and could disrupt the social and economic loop of life.C",
            tags$br(),
            h3("Disclaimer"),
            "This App is for educational purposes only. Opinions or points of view expressed in this App represent the view of the
            creator only, that relies on public data from the John Hopkins, WHITING SCHOOL OF ENGINEERING, CENTER FOR SYSTEMS SCIENCE AND ENGINEERING. 
            Nothing in this App constitutes legal advice.",
            tags$br(),
            h3("Creator"),
            "Made with love by Stuti Mittra",
            tags$br(),
            tags$a(href = "https://www.linkedin.com/in/stuti-mittra-577160162/", "LinkedIn"), " | ",
            tags$a(href = "https://github.com/stuti24m", "GitHub"), " | ",
            tags$a(href = "https://www.hackerrank.com/stuti24m", "HackerRank"), " | ",
            tags$a(href = "https://www.quora.com/profile/Stuti-Mittra", "Quora"), 
            width = 12
          ),
          width = 6,
        ),
        width = 12,
        style = "padding: 15px"
      )
    )
  )
)


page_about <- dashboardPage(
  title = "About",
  header = dashboardHeader(disable = TRUE),
  sidebar = dashboardSidebar(disable = TRUE),
  body = body_about
)