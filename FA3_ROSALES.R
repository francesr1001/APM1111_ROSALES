list_num <- c(
  88, 45, 53, 86, 33, 86, 85, 30, 89, 53, 41, 96, 56, 38, 62,
  71, 51, 86, 68, 29, 28, 47, 33, 37, 25, 36, 33, 94, 73, 46,
  42, 34, 79, 72, 88, 99, 82, 62, 57, 42, 28, 55, 67, 62, 60,
  96, 61, 57, 75, 93, 34, 75, 53, 32, 28, 73, 51, 69, 91, 35
)

list_length <- length(list_num)

q1 <- quantile(list_num, 0.25)
q2 <- quantile(list_num, 0.50)  
q3 <- quantile(list_num, 0.75)

d9 <- quantile(list_num, 0.9)
p95 <- quantile(list_num, 0.95)

max_value <- max(list_num)
min_value <- min(list_num)

mean_value <- mean(list_num)
median_value <- median(list_num)
mode_value <- median(list_num)


std <- sd(list_num)

variance <- var(list_num)

std_error_skewness <- sqrt(6 * list_length * (list_length - 1) / ((list_length - 2) * (list_length + 1) * (list_length + 3)))

skewness_value <- sum((list_num - mean_value)^3) / (list_length * std^3)


kurtosis_value <- sum((list_num - mean_value)^4) / (list_length * std^4) - 3


cat("Valid:", list_length, "\n")
cat("Mean:", max_value, "\n")
cat("Mean:", min_value, "\n")

cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")




results_df <- data.frame(
  Data = c("Valid", "Mode", "Mean", "Median", "Standard Deviation", "Variance", "Skewness", "Standard Error of Skewness", " Kurtosis", "Q1", "Q2", "Q3", "D9", "P95"),
  Score = c(list_length,mode_value, mean_value, median_value,  std, variance, skewness_value, std_error_skewness, kurtosis_value, q1, q2, q3, d9, p95)
)
results_df$Score <- sprintf("%.3f", results_df$Score)

print(results_df)


