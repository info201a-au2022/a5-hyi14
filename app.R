# app.R

library(shiny)
library(shinythemes)
library(tidyverse)
library(ggplot2)
library(plotly)

source("app_ui.R")
source("app_server.R")

# Run the application
shinyApp(ui = ui, server = server)
