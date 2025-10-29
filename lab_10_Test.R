# lab10_TeamX.R
# Team: Team X
# Members: Atmaram Mahale(2322), Govardhan Patil(2312), Samuel Bhandari(2308), Jay Gaonkar(2323)
# Tanish shirodkar(2325), Atharv Kazari(2314), Mohal Gawas(2315), Rohan Bandodkar(2327)
# Dataset: mtcars

# Load data
data("mtcars")



# 1. Histogram of MPG (Fuel Efficiency)

# Shows the distribution of fuel efficiency across all cars.
# Helps identify most common MPG ranges and variation.

hist(mtcars$mpg,
     main = "Distribution of Miles Per Gallon (Fuel Efficiency)",
     xlab = "Miles per Gallon (MPG)",
     ylab = "Number of Cars",
     col = "#00BFC4",        # teal blue
     border = "black")



# 2. Scatter Plot: Weight vs MPG

# Demonstrates how car weight affects fuel efficiency.
# Expect a negative trend — heavier cars usually have lower MPG.

plot(mtcars$wt, mtcars$mpg,
     main = "Relationship between Car Weight and Fuel Efficiency",
     xlab = "Car Weight (in 1000 lbs)",
     ylab = "Miles per Gallon (MPG)",
     col = "red",       
     pch = 19,               
     cex = 1.3)              
grid()

abline(lm(mpg ~ wt, data = mtcars), col = "darkblue", lwd = 2)
legend("topright", legend = c("Car", "Trend Line"),
       col = c("red", "darkblue"), pch = c(19, NA),
       lty = c(NA, 1), bty = "n")



# 3. Box Plot: MPG by Number of Cylinders

# Compares fuel efficiency (MPG) among 4, 6, and 8-cylinder cars.
# Helps observe which engine type gives better mileage.

boxplot(mpg ~ cyl, data = mtcars,
        main = "Fuel Efficiency Comparison by Engine Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon (MPG)",
        col = c("yellow", "darkgreen", "blue"),   # green, violet, blue
        border = "black")
# text info
mtext("4-cylinder cars are most fuel efficient; 8-cylinder least.", side = 3, line = 0.5, cex = 0.8, col = "darkblue")



# 4. Line Plot: MPG Across Cars

# Displays MPG for each car index, showing variation and trend.
# Useful to spot cars with very high or low fuel efficiency.

plot(mtcars$mpg, type = "o",
     main = "Trend of Fuel Efficiency Across Car Models",
     xlab = "Car Index (1–32)",
     ylab = "Miles per Gallon (MPG)",
     col = "blue",     # soft blue line
     pch = 16,            # filled circles
     lwd = 2)
grid()
text(5, max(mtcars$mpg) - 2, "High variation among cars", col = "red", cex = 0.8)



# 5. Bar Plot: Average MPG by Cylinder

# Summarizes average fuel efficiency for each cylinder group.
# Useful for quick comparison between 4, 6, and 8-cylinder engines.

avg_mpg <- tapply(mtcars$mpg, mtcars$cyl, mean)  # mean MPG per cylinder group

barplot(avg_mpg,
        main = "Average Fuel Efficiency by Number of Cylinders",
        xlab = "Cylinders",
        ylab = "Average MPG",
        col = c("#F8766D", "#7CAE00", "#00BFC4"),
        border = "white")
grid()
text(x = c(0.8, 1.9, 3), y = avg_mpg + 0.8,
     labels = round(avg_mpg, 1),
     col = "black", cex = 0.9)
mtext("4-cylinder cars show the best average fuel economy.", side = 3, line = 0.5, cex = 0.8, col = "darkgreen")

# 6. Pie Chart of Car Cylinders

# Shows proportion of cars by cylinder type (4, 6, 8)

cyl_counts <- table(mtcars$cyl)
cyl_percent <- round(100 * cyl_counts / sum(cyl_counts), 1)  # calculate percentages
labels <- paste(names(cyl_counts), "Cylinders\n", cyl_percent, "%")  # "\n" puts % on new line

pie(cyl_counts,
    main = "Proportion of Cars by Engine Cylinders",
    col = c("green", "yellow", "red"),
    labels = labels)




