##############################
# Code by Arghya Kannadaguli
# Data Science 1 - Lecture 2
# Sept 5, 2024
#
##############################

# LOAD PACKAGE ---------------
library(tidyverse) #must be loaded with every new script

# BASIC ARITHMETIC -----------
2+3
3*17

# VARIABLES ------------------
# Define variable (can use = or <- interchangeably, usually)
x = 3*17

# Overwrite variable (no warning, it just overwrites)
# x = 7.1857

# Collection of numbers
y = c(1, 3, 6, 9)

# R uses best guess about what you want
x + y

# FUNCTIONS ------------------

x = runif(20) #pronounced youniff, Uniform Distribution
x = runif(n = 50, min = 1, max = 14)

# HELP -----------------------
?runif #shows variable documentation in Help window -->

# OTHER FUNCTIONS ------------
mean(x) #arithmetic mean
var(x) #variance
sd(x) #standard deviation

# DATA FRAMES ----------------

example_df = 
  tibble(
    vec_numeric = 10:13,
    vec_char = c("My", "name", "is", "Arghya"),
    vec_logical = c(TRUE, TRUE, FALSE, TRUE),
    vec_factor = factor(c("male", "female", "male", "male"))
  )

example_df #show df
example_df$vec_numeric #calling df column

#Notes:
# all columns have informative, consistent variable names, using snake case
# focus on readability, make sure code lines aren't super long, break them up
# e.g. x=13 vs. x = 13
# e.g. having all df column lines in one line vs. in different lines
# Edit preferences to make it auto-suggest style improvements

# PLOTTING -------------------

plot_df =
  tibble(
    x = rnorm(1000, sd= .5),
    y = 1 + 2 * x + rnorm(1000)
  )

# Histogram
ggplot(plot_df, aes(x = x)) +
  geom_histogram()

# Point plot
ggplot(plot_df, aes(x = x, y = y)) +
  geom_point()

# Same thing but as a parabola
plot_df =
  tibble(
    x = rnorm(1000, sd= .5),
    y2 = 1 + 2 * x^2 + rnorm(1000)
  )

ggplot(plot_df, aes(x = x, y = y2)) +
  geom_point()

#Notes:
# aes = aesthetic mappings, used in ggplot





