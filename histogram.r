students <- data.frame(
  student = c("reethu", "deepu", "krishna", "priya", "raju"),
  Math = c(99, 98, 97, 96, 95),
  Science = c(100, 68, 79, 89, 90),
  English = c(56, 78, 90, 78, 99),
  Hours = c(1.0, 2.0, 3.0, 4.0, 8.0)
)

head(students)

g <- data.frame(Students, sub = math) +

  ggplot(Students, aes(x = math)) +

  geom_histogram(
    binwidth = 8,
    fill = "#9b59b6",
    color = "black",
    alpha = 0.8
  ) +

  geom_vline(
    xintercept = mean(Students$math),
    color = "red",
    linetype = "dashed",
    linewidth = 1
  ) +

  labs(
    title = "Distribution of Math Scores",
    x = "Score",
    y = "Count"
  ) +

  theme_classic()
