students <- data.frame(
  student = c("reethu", "deepu", "krishna", "priya", "raju"),
  Math = c(99, 98, 97, 96, 95),
  Science = c(100, 68, 79, 89, 90),
  English = c(56, 78, 90, 78, 99),
  Hours = c(1.0, 2.0, 3.0, 4.0, 8.0)
)

head(students)
ggplot(student, aes(x = Hours, y = Math, label = Student)) +
  geom_point(aes(color = Math, size = 4)) +
  geom_smooth(
    method = "lm",
    se = TRUE,
    color = "steelblue",
    linetype = "dashed"
  ) +
  geom_text(
    vjust = -1,
    size = 3
  ) +
  scale_color_gradient(
    low = "orange",
    high = "darkblue"
  ) +
  labs(
    title = "Hours Studied vs Math Score",
    x = "Hours Studied",
    y = "Math Score"
  ) +
  theme_minimal()
