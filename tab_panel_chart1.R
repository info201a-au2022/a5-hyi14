# tab_panel_chart1

library(shiny)

# Narrow down df for Interactive Visual
newdf <- df %>% 
  select(country, year, population, gdp, co2, co2_per_capita, total_ghg) %>% 
  na.omit()

year_range <- range(newdf$year)
select_values <- colnames(newdf)

# Year Slider
co2_year_input <- sliderInput(
  inputId = "year_choice",
  label = "Select Year Range", 
  min = year_range[1],
  max = year_range[2],
  value = year_range
)

# Dropdown Menu with feature of interest
feature_input <- selectInput(
  inputId = "feature", 
  label = "Feature of Interest", 
  choices = select_values, 
  selected = "country"
)

# Scatterplot
tab_panel_chart1 <-tabPanel(
  "Interactive Visual",
  
  h1(strong("CO2 Emissions vs. Selected Feature (1750-2021)")),
  
  fluidPage(
    co2_year_input, 
    feature_input, 
    checkboxInput("smooth", label = strong("Show Trendline"), value = TRUE),
    plotlyOutput("plot"), 
    
    p(""),
    p("This graph was included to discover potential correlation between 
    carbon emissions and various features of interest (year, population, GDP etc.),
    and to compare such correlations between different countries.
    
    The interactive scatterplot explores the correlation between 
    carbon emissions and a user selected feature such as: year, population, GDP,
    co2 per capita and total greenhouse gases in a given year range.
      "),
    
    p("Overall, there is", strong("positive correlation"), "between carbon emissions 
    and the feature of interest. Specifically for", em("population,"), "countries with the
    largest population(China, United States, Russia) had bigger co2 emissions. 
    
    Similarly for", em("GDP,"), "countries with the highest GDP(United States, China, Russia) 
    had the biggest carbon emissions. This positive correlation is explained by
    the environmental impact of economic growth such as: increased consumption of 
    non-renewable resources, higher levels of pollution, global warming 
    and loss of environmental habitats.
      "),
    
    p("Countries can also be individually selected when the corresponding dot in the 
    legend is double clikced. This allows better focus on one country, 
    without having to struggle with overlap of other data.
      ")
  )
)

