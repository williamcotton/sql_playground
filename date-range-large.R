df$year_month <- as.Date(paste0(df$year_month, "-01"))
ggplot(df, aes(year_month, value)) +
  geom_col() +
  scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(
    title = "Monthly Values",
    x = "Year-Month",
    y = "Value"
  )