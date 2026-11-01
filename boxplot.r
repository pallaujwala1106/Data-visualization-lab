students <- data.frame(
  student = c("reethu", "deepu", "krishna", "priya", "raju"),
  Math = c(99, 98, 97, 96, 95),
  Science = c(100, 68, 79, 89, 90),
  English = c(56, 78, 90, 78, 99),
  Hours = c(1.0, 2.0, 3.0, 4.0, 8.0)
)

head(students)

long_df <- pivot_longer(
  students,
  cols = c(Math, Science, English),
  names_to = "Subject",
  values_to = "Score"
)

ggplot(long_df, aes(x = Subject, y = Score, fill = Subject)) +
  geom_boxplot(alpha = 0.7, outlier.color = "red") +
  geom_jitter(width = 0.2, alpha = 0.5) +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Score Distribution by Subject",
    x = "Subject",
    y = "Score"
  ) +
  theme_light() +
  theme(legend.position = "none")
