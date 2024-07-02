# Load necessary libraries
library(ggplot2)

# Set seed for reproducibility
set.seed(42)

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
plot(stationary_ts, type = "o", col = "blue", main = "Stationary Time Series Example",
     xlab = "Time", ylab = "Value")
