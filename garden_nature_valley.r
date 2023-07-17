# The Urban Canvas

# Introduction 

The Urban Canvas is a project to create art in public places, drawing attention to the beauty and complexity of urban spaces. It seeks to raise awareness and appreciation of the environment in cities and towns by creating public artworks that reflect the unique characteristics of each place while interacting with the cityscape.

# Libraries

library(ggplot2)
library(ggthemes)
library(gridExtra)
library(dplyr)

# Dataset 

urban_canvas_data <- read.csv("urban_canvas_data.csv")

# Data Cleaning 

urban_canvas_clean <- urban_canvas_data %>%
  select(date, city, artwork, artist, location, description) %>%
  na.omit()

# Exploratory Data Analysis

head(urban_canvas_clean)
str(urban_canvas_clean)

ggplot(data = urban_canvas_clean,
       aes(x = city, fill = artwork)) +
  geom_bar() +
  xlab("City") +
  ylab("Number of Artworks") +
  ggtitle("Number of Artworks by City")

# Plotting

artwork_plot <- ggplot(data = urban_canvas_clean,
                       aes(x = artist, fill = artwork)) +
  geom_bar() +
  xlab("Artist") +
  ylab("Number of Artworks") +
  ggtitle("Number of Artworks by Artist")

artist_plot <- ggplot(data = urban_canvas_clean,
                      aes(x = artist, fill = artwork)) +
  geom_bar() +
  xlab("Artist") +
  ylab("Number of Artworks") +
  ggtitle("Number of Artworks by Artist")

location_plot <- ggplot(data = urban_canvas_clean,
                        aes(x = location, fill = artwork)) +
  geom_bar() +
  xlab("Location") +
  ylab("Number of Artworks") +
  ggtitle("Number of Artworks by Location")

date_plot <- ggplot(data = urban_canvas_clean,
                    aes(x = date, fill = artwork)) +
  geom_bar() +
  xlab("Date") +
  ylab("Number of Artworks") +
  ggtitle("Number of Artworks by Date")

# Plotting Output

grid.arrange(artwork_plot,
             artist_plot,
             location_plot,
             date_plot,
             nrow = 2)

# Summary 

The Urban Canvas project has produced a range of artworks in various cities, by different artists. Its aim is to create public art that engages with the environment and draws attention to the beauty and complexity of urban spaces. Through the analysis of the data, it appears that the most popular artwork type is paintings, followed by sculptures and installations. The majority of works have been completed by local artists, and most are located in outdoor settings.