# Load necessary libraries
library(ggplot2)

# Set seed for reproducibility
set.seed(42)

# Code that 
# Create a time sequence
time <- seq(1, 100, by = 1)

# Generate a stationary time series data
# Sinusoidal component
sin_component <- sin(time / 3)

# Random noise component
noise_component <- rnorm(length(time), mean = 0, sd = 0.2)

# Combine components to create a stationary time series
stationary_series <- sin_component + noise_component

# Convert to time series object
stationary_ts <- ts(stationary_series)

# Plot the time series
#plot(stationary_ts, type = "o", col = "blue", main = "Stationary Time Series Example",
#     xlab = "Time", ylab = "Value")

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
non_stationary_ts <- ts(periodic_signal)

plot(time_series_object, type = "l", main = "Simple Non-Stationary Signal", xlab = "Time", ylab = "Value")

# Install the package if we don't already have it.
if (!require("tseries")) install.packages("tseries")
library(tseries)

print("For Stationary Signal")
result_adf <- adf.test(stationary_ts, alternative="stationary")
result_kpss <- kpss.test(stationary_ts)
print(result_adf)
print(result_kpss)

print("For Non-Stationary Signal")
result_adf <- adf.test(non_stationary_ts)
result_kpss <- kpss.test(non_stationary_ts)
print(result_adf)
print(result_kpss)
