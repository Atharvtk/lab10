# lab10_TeamX.R
# Team: Team X
# Members: [Names + Roll Nos]
# Dataset: mtcars

# Load data
data("mtcars")

# 1️⃣ Histogram of mpg
hist(mtcars$mpg,
     main = "Histogram of Miles Per Gallon",
     xlab = "MPG",
     col = "skyblue",
     border = "Black")

# 2️⃣ Scatter Plot of wt vs mpg
plot(mtcars$wt, mtcars$mpg,
     main = "Scatter Plot: Weight vs MPG",
     xlab = "Car Weight (1000 lbs)",
     ylab = "Miles per Gallon",
     col = "red",
     pch = 19)

# 3️⃣ Box Plot of mpg by number of cylinders
boxplot(mpg ~ cyl, data = mtcars,
        main = "Boxplot of MPG by Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        col = c("orange", "lightgreen", "lightblue"))

# 4️⃣ Line Plot of mpg across car index
plot(mtcars$mpg, type = "l",
     main = "Line Plot of MPG for Cars",
     xlab = "Car Index",
     ylab = "Miles per Gallon",
     col = "purple")

# 5️⃣ Bar Plot of mean mpg by cylinder
avg_mpg <- tapply(mtcars$mpg, mtcars$cyl, mean)
barplot(avg_mpg,
        main = "Average MPG by Cylinder",
        xlab = "Cylinders",
        ylab = "Average MPG",
        col = c("coral", "gold", "lightgreen"))

