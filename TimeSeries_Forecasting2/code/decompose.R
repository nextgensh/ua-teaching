# Load necessary libraries
library(ggplot2)
library(stats)

set.seed(123)

# Define the parameters for the time series
time_points <- 1:100  # Generate 100 time points
frequency <- 2 * pi / 20  # Set the frequency (20 time points per cycle)
amplitude <- 1  # Set the amplitude

# Create the periodic time series signal using a sine function
periodic_signal <- amplitude * sin(frequency * time_points)

# Random noise component
noise_component <- rnorm(length(time), mean = 0, sd = 1)

# Generate a non-stationary time series with a linear trend
trend_component <- 0.09 * time  # Linear trend

# Add noise to the signal.
periodic_signal <- periodic_signal + noise_component + trend_component

# Convert to time series object
time_series_object <- ts(periodic_signal, frequency = 20)

# Plot the time series
#plot(time_series_object, type = "l", main = "Simpl Non-Stationary Signal", xlab = "Time", ylab = "Value")

decomp <- stl(time_series_object, s.window="periodic")
plot(decomp, main="Signal Decomposition from STL()")
