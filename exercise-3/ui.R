# UI for scatterplot
library(shiny)
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(
  # A page header
  titlePanel("MPG PLOTS"),
  
  # Add a select input for the x variable
  selectInput("x_var", "X-axis", select_values),
  
  # Add a select input for the y variable
  selectInput("y_var", "Y-axis", select_values),

  # Add a sliderInput to set the size of each point
  sliderInput("point_size", "Point Size", 1, 10, 1),

  # Add a selectInput that allows you to select a color from a list of choices
  selectInput("color", "Color", c("red", "blue", "green", "purple", "yellow")),

  # Plot the output with the name "scatter"
  plotOutput("scatter")
)

shinyUI(ui)