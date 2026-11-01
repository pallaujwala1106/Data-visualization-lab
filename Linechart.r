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
ggplot(long_df, aes(x = Student, y = Score, color = Subject, group = Subject)) +
  geom_line(linewidth = 1) +                  
  geom_point(size = 3) +                    
  theme_minimal() +                          
  labs(
    title = "Student Score Trends",          
    x = "Student",
    y = "Marks"                             
  ) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )
