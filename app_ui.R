# app_ui.R

library(shiny)

source("tab_panel_intro.R")
source("tab_panel_chart1.R")

ui <- navbarPage(
  theme = shinytheme("cosmo"),
  title = "A5 Climate Change",
  position = "fixed-top",

# Footer
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("INFO-201A Autumn 2022 Hannah Yi"),
    hr()
  ),

  # Introduction Page
  tab_panel_intro,

  # Interactive Visual Page
  tab_panel_chart1
  
)

