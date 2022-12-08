# Wrangle data w dplyr

# load data
df1 <- read.csv('owid-co2-data.csv')

unique(df1$country)

# Render Data for 3 Values in Introduction
# 1. What is the average value of CO2 per capita across all countries in 2021?
co2_per_capita_2021 <- df1 %>% 
  group_by(year) %>% 
  filter(year == "2021") %>% 
  summarize(co2_per_capita = sum(co2_per_capita, na.rm = TRUE))

avg_2021 <- round(co2_per_capita_2021$co2_per_capita / 269, 1) # annual, in tones per person

# 2. Where is the CO2 per capita highest? Lowest?
# Highest
highest_co2_per_capita <- df1 %>% 
  filter(co2_per_capita == max(co2_per_capita, na.rm = TRUE)) %>% 
  select(country, co2_per_capita) %>% 
  pull(country)

# Lowest
lowest_co2_per_capita <- df1 %>% 
  filter(co2_per_capita == min(co2_per_capita, na.rm = TRUE)) %>% 
  select(country, co2_per_capita) %>% 
  group_by(country) %>% 
  summarize(co2_per_capita = sum(co2_per_capita)) # many countries have 0 co2_per_capita

# 3. How much has CO2 per capita changed over the last 10 years?
co2_per_capita_2011 <- df1 %>% 
  group_by(year) %>% 
  filter(year == "2011") %>% 
  summarize(co2_per_capita = sum(co2_per_capita, na.rm = TRUE))

avg_2011 <- round(co2_per_capita_2011$co2_per_capita / 269, 1)

# Find 10 year difference
co2_per_capita_10yr_diff <- round(avg_2021 - avg_2011, 1)
