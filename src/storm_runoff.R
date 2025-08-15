# YOUR TASK:
#   
#   Create a new R script in src, saved as storm_runoff.R
# 
# In the script, create a function called predict_runoff that estimates the storm runoff volume using inputs for the impervious fraction and watershed area (you can use a constant value of 1 for                                                                                                                                                here). In other words, your function should only require two arguments

predict_runoff <- function(i_a, a) {
  runoff_volume <- vector(mode = "numeric", length = length(i_a))
  for(i in seq_along(i_a)) {
  v <- 3630*1*(.05+.09*i_a[i])*a
  runoff_volume[i] <- v
  }
  return(runoff_volume)
}
# Add documentation to your function using Roxygen comments for practice
# 
# Try out your function in the Console to ensure that it works
# 
# Create a new R Markdown document in docs, saved as runoff_volumes.Rmd
# 
# Attach the tidyverse and here packages
# 
# Source your storm_runoff.R script so you are able to use the predict_runoff function in your .Rmd
# 
# In a code chunk in your runoff_volumes.Rmd, use your predict_runoff function to estimate stormwater volume for a watershed of 182 acres, over a range of estimates for the impervious fraction (from 0.6 to 0.8, by increments of 0.01). Note: you do not need to write a for loop here.
# 
# Bind your sequence of impervious fractions together with the resulting runoff volume calculated into a data frame
# 
# Create a ggplot graph that has both dots and connecting lines (i.e., you’ll layer geom_point() and geom_line(). Update axis labels. Export a png of your graph to the figs folder using ggsave.
#                                                               