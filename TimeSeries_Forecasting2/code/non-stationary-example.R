# Set seed for reproducibility
set.seed(123)

# Create a time sequence
time <- 1:100

# Generate a non-stationary time series with a linear trend
trend_component <- 0.05 * time  # Linear trend

# Random noise component
noise_component <- rnorm(length(time), mean = 0, sd = 1)

# Combine components to create a non-stationary time series
non_stationary_series <- trend_component + noise_component

# Convert to time series object
non_stationary_ts <- ts(non_stationary_series)

# Plot the time series
plot(non_stationary_ts, type = "o", col = "red", main = "Non-Stationary Time Series Example",
     xlab = "Time", ylab = "Value")
lines(trend_component, col="green")