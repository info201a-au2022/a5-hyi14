# app_server.R

library(shiny)
library(ggplot2)
library(plotly)
library(tidyverse)
library(dplyr)

df <- read.csv('owid-co2-data.csv') %>% 
  na.omit()

unique(df$country)

# narrow down df
newdf <- df %>% 
  select(country, year, population, gdp, co2, co2_per_capita, total_ghg) %>% 
  na.omit()

# SERVER
server <- function(input, output) {
  output$plot <- renderPlotly({
    plot_data <- newdf %>% 
      filter(year > input$year_choice[1], year < input$year_choice[2])
    
    # Graph x- user input, y- co2
    p <- ggplot(
      data = plot_data,
      mapping = aes_string(x = input$feature, y = "co2", color = "country")
    ) +
      geom_point(size = 3, alpha = .5) +
      labs(
        title = "CO2 Emissions vs. Selected Feature (1750-2021)",
        y = "C02 Emissions (million tonnes)"
      )

    # Make Interactive
    # p <- ggplotly(p) 
    
    # Trendline
    if (input$smooth) {
      p <- p + geom_smooth(se = FALSE)
    }

    p
  })
}


