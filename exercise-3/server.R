### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
server <- function(input, output){
# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter
  output$scatter <- renderPlot({
    # Store x and y values to plot
    x <- mpg[[input$x_var]]
    y <- mpg[[input$y_var]]
    # Store the title of the graph in a variable
    title <- "MPG Plot"
    size <- input$point_size
    color <- input$color
    
    # Create ggplot scatter
    p <- ggplot(mpg) +
      geom_point(mapping = aes(x = x, y = y), color = color, size = size) +
      title(title, xlab = x, ylab = input$y_var)
    p
  })
}

shinyServer(server)