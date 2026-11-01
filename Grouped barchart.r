students <- data.frame(
  student = c("reethu", "deepu", "krishna", "priya", "raju"),
  Math = c(99, 98, 97, 96, 95),
  Science = c(100, 68, 79, 89, 90),
  English = c(56, 78, 90, 78, 99),
  Hours = c(1.0, 2.0, 3.0, 4.0, 8.0)
)

head(students)
ggplot(Students)

ggplot(long_df, aes(x = Student, y = Score, fill = Subject)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_brewer(palette = "Set1") +
  labs(
    title = "Scores by Student & Subject",
    x = "Student",
    y = "Score"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
