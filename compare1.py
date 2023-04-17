from scipy.stats import ttest_ind

# Define the two datasets
dataset1 = [2, 4, 6, 8, 10]
dataset2 = [3, 5, 7, 9, 11]

# Perform the two-sample t-test
t_statistic, p_value = ttest_ind(dataset1, dataset2)

# Print the results
print("t-statistic:", t_statistic)
print("p-value:", p_value)

# Interpret the results
alpha = 0.05  # Set the significance level
if p_value < alpha:
    print("There is significant evidence to reject the null hypothesis that the means are equal.")
else:
    print("There is insufficient evidence to reject the null hypothesis that the means are equal.")

