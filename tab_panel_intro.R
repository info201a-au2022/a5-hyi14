# tab_panel_intro

library(shiny)

source("analysis.R")

tab_panel_intro <-tabPanel(
  "Introduction",
  
  h1(strong("Introduction Report")),
  p("INFO-201A"),
  p("Autumn 2022"),
  p("Hannah Yi"),
    
  img(src = 'feel_heat.jpg', style="width: 700px"),

  h2("Topic Introduction"),
  p("Over the years, the rapid growth of greenhouse gases and fossil fuel emissions 
    caused climate change and global warming to intensify. This environmental 
    hazard causes differential human vulnerability resulted from social, 
    economic, historical, and political factors. With the CO2 and Greenhouse Gas
    Emissions data provided by Our World in Data, we hope to explore trends in C02.
    "),
  
  h2("Variables and Measure of C02"),
  p("The variable I chose was C02 emissions per capita, in hopes to further investigate
  the changes in Carbon emission regarding individual rates. It is crucial to 
  discover the trends by person so people can take specific actions to prevent 
  climate change. Addtionally, carbon emissons at a smaller amount will allow
  for easier comparison. The following are three questions that were examined 
  with values bolded.
  "),
  
  h2("3 Values"),
  p("The first question is 'What is the average value of CO2 per capita across 
  all countries in 2021?' The average carbon emission per capita in 2021 was"
  , strong(avg_2021), "tonnes. This question is important for examining the 
  recent amount of carbon emissions. 
  "),
  
  p("The second question is 'Where is the CO2 per capita highest? Lowest?'
  CO2 emissions per capita was highest in", strong(highest_co2_per_capita), "and lowest in 59 
  countries as the lowest carbon emission is 0. This question is essential for 
  determing the possible factors that contribute to carbon emissions such as 
  geographical location, technological advancement, and culture.
  "),
    
  p("The third question is 'How much has CO2 per capita changed over the last 10 years?'
  The difference of CO2 per capita between 2021 and 2011 is", strong(co2_per_capita_10yr_diff),
  "tonnes. This question is crucial for comparing recent GHG emissions with past 
  years and predicting future trends. It is interesting to note how CO2 per 
  capita has decreased in the past decade.
  ")
  
)



