students <- data.frame(
  student = c("reethu", "deepu", "krishna", "priya", "raju"),
  Math = c(99, 98, 97, 96, 95),
  Science = c(100, 68, 79, 89, 90),
  English = c(56, 78, 90, 78, 99),
  Hours = c(1.0, 2.0, 3.0, 4.0, 8.0)
)

head(students)

avgs <- colMeans(students[, c("Math", "Science", "English")])

barplot(avgs,
        main = "Average Subject Scores",
        xlab = "Subject",
        ylab = "Average Score",
        col = c("#3498db", "#2ecc71", "#e74c3c"),
        ylim = c(0, 100),
        border = "black"
)

abline(h = mean(avgs),
       col = "darkgray",
       lty = 2)

legend("topright", legend = paste("Overall Avg:", round(mean(avgs), 1)))
