# Shiny Web Application

library(shiny)

source("tab_panel_intro.R")
source("tab_panel_chart1.R")

ui <- navbarPage(
  theme = shinytheme("cosmo"),
  title = "Project Example",
  position = "fixed-top",

  # A simple footer
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("... Project Footer ... "),
    hr()
  ),

  # The project introduction
  tab_panel_intro,

  # Interactive chart
  tab_panel_chart1
  
)
