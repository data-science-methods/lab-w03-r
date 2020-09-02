#' ---
#' title: "Data Science Methods, Lab for Week 2: R Basics"
#' author: "Your Name"
#' email: Your Email
#' output:
#'   html_document:
#'     toc: true
#' ---

#' For this lab, we're going to use data from the [Tidy Tuesday project](https://github.com/rfordatascience/tidytuesday).  Each Tuesday the project releases a new dataset as a way for people to practice data cleaning and exploratory data analysis.  Participants are encouraged to use #TidyTuesday on social media. 
#' 
#' While we could clone the entire Tidy Tuesday git repo, it's quite large and we just need one tiny part of it.  We'll use a package designed for retrieving single datasets from the Tidy Tuesday repo. 
#' 

library(ggplot2)
library(dplyr)
library(tidytuesdayR)

## If an error is raised here, see `one-time-setup.R`. 
tt_data = tt_load('2019-02-12')

#' # Problem 1 #
#' Take a minute or two to read about the dataset here:  <https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-02-12>
#' 


#' # Problem 2 #
#' `tt_data` is a list with three elements.  We want to work with the third element, named `fed_r_d_spending`.  
#' - Assign this element to a variable `dataf`.  Note that we want the element itself, not a list containing the element. 
#' 


#' # Problem 3 #
#' 1. What is the class of `dataf`?  What dimensions does it have?  
#' 2. What are the units for the variables `rd_budget` and `gdp`?  Do we need to consider inflation when we work with these variables? 
#' 


#' # Problem 4 #
#' 1. Let's create a line graph of federal R&D spending over time, broken down by funding agency.  Uncomment the following lines (highlight them and then Command+Shift+C) and fill in the blanks: 

# rd_plot = ggplot(data = ----, aes(x = ----, y = ----, 
#                                  color = agency)) +
#     geom_line()
# rd_plot

#' 2. It's hard to read with all of the departments in a single panel.  Uncomment the following line, and add a `facet_wrap()` call to plot each agency in its own panel. 

# rd_plot + facet_wrap()

#' 3. Copy and paste your code from above. The scale of DOD spending swamps most other agencies, including the National Science Foundation.  Let's put each facet on its own scale.  Consult `?facet_wrap`.  Read about the `scales` argument, and set it so that the scales are free along the y-axis. 

#' 4. Examine the examples in `?labs`.  Use this function to add more meaningful labels to the x- and y-axis, as well as a title for the whole plot.  Put your complete code below. 

#' 5. Has federal R&D spending generally increased, decreased, or stayed flat over the last 40 years? 
#' 


#' # Problem 5 #
#' These data have been adjusted for inflation, but GDP has also grown significantly over time.  Even if federal support for scientific researcher has grown in absolute dollars, it might be shrinking as a percentage of GDP. 
#' 
#' 1. Uncomment and run the following line of code.  

# dataf = mutate(dataf, rd_per_gdp = rd_budget / gdp * 100)

#' 2. Try and figure out what this code is doing. 
#' 3. How does this line violate the rules of functional programming? How could it be modified to avoid the violation? 
#' 4. Modify your plot above to plot R&D spending, as a percentage of GDP, over time. 

#' 5. In terms of percentage of GDP, has federal R&D spending generally increased, decreased, or stayed flat over the last 40 years? 
#' 


#' # Problem 6 #
#' In the previous lab, you learned the fork-clone-push-PR workflow for these labs.  This allows us to use a system called Travis to automatically confirm that you've successfully completed each lab assignment.  (Hopefully we'll have time to learn more about Travis when we talk about reproducibility.) 
#' 
#' For this system to work correctly, you need to do a few things in these lab assignments. 
#' - When I tell you to assign something to a certain variable, you need to use that exact name.  Otherwise I won't know where to look for the output of your work. 
#' - For the same reason, don't change filenames, etc. 
#' - Anything that's not R code (eg, answers to questions) needs to be on lines starting with `#'`
#' - Whenever you load additional packages (using `library()`, never `require()`), make sure they're also listed in the `DESCRIPTION` file. 
#' - When you're finished with the lab, be sure to file a pull request against the original lab repo.  Travis will check your work and (need to confirm this) add a PR comment indicating whether there are any errors.  
#' 
#' This setup also allows you to get automated feedback on your working machine.  You'll need the `testthat` package installed.  Then, simply run the following line at any point: 
# testthat::test_dir('tests', reporter = 'progress')
#' The output here will tell you where your code isn't getting the correct answer.  It will also indicate warnings where things can't be checked, like plots and written answers.  
#' 