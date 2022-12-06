# tab_panel_report

library(shiny)
library("markdown")

tab_panel_report <-tabPanel(
  "Introduction",

  fluidRow(
    column(
      6,
      includeMarkdown("report.md")
    )
  )


)



