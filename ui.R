source("UI/ui_overview.R", local = TRUE)
source("UI/ui_plots.R", local = TRUE)
source("UI/ui_about.R", local = TRUE)
source("UI/ui_fullTable.R", local = TRUE)

ui <- fluidPage(
  title = "COVID-19 Global Cases",
  tags$head(
    tags$link(rel = "shortcut icon", type = "image/png", href = "logo.png")
  ),
  tags$style(type = "text/css", ".container-fluid {padding-left: 0px; padding-right: 0px !important;}"),
  tags$style(type = "text/css", ".navbar {margin-bottom: 0px;}"),
  tags$style(type = "text/css", ".content {padding: 0px;}"),
  tags$style(type = "text/css", ".row {margin-left: 0px; margin-right: 0px;}"),
  tags$style(HTML(".col-sm-12 { padding: 5px; margin-bottom: -15px; }")),
  tags$style(HTML(".col-sm-6 { padding: 5px; margin-bottom: -15px; }")),
  navbarPage(
    title       = div("COVID-19 Statistical Analysis Simulator App", style = "padding-left: 10px"),
    inverse = TRUE,
    collapsible = TRUE,
    fluid       = TRUE,
    tabPanel("Overview", page_overview, value = "page-overview"),
    tabPanel("Table", page_fullTable, value = "page-fullTable"),
    tabPanel("Plots", page_plots, value = "page-plots"),
    tabPanel("About", page_about, value = "page-about"),
    tags$script(HTML("var header = $('.navbar > .container-fluid');
    header.append('<div style=\"float:right\"><a target=\"_blank\" href=\"https://github.com/stuti24m\"><img src=\"stuti6.jpg\" alt=\"alt\" style=\"float:right;width:33px;padding-top:10px;margin-top:-50px;margin-right:10px\"> </a></div>');
    console.log(header)")
    )
  )
)