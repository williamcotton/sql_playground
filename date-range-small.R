ggplot(df, aes(x = year_month, y = value)) +
  geom_col(fill = "blue") +
  labs(title = "Monthly Values", x = "Year-Month", y = "Value")