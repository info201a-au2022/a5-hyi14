# tab_panel_intro

library(shiny)
library("markdown")

tab_panel_intro <-tabPanel(
  "Introduction",
  
  fluidRow(
    column(
      6,
      includeMarkdown("report.md")
    )
  )
  
)



