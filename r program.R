exp-1

# Creating an object
x <- 10   # x is a numeric object

# Create a vector with names
v <- c(10, 20, 30)
names(v) <- c("A", "B", "C")

# Print the vector and its attributes
print(v)
attributes(v)

num_vec <- c(1, 2, 3, 4, 5)
print(num_vec)
char_vec <- c("apple", "banana", "cherry")
print(char_vec)
log_vec <- c(TRUE, FALSE, TRUE)
print(log_vec)

# Creating a list
my_list <- list(
  name = "Alice",
  age = 25,
  scores = c(90, 85, 88),
  passed = TRUE
)

print(my_list)





exp-2
# Creating a dataframe
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Married = c(TRUE, FALSE, TRUE)
)

print(df)
# Creating a numeric matrix
mat <- matrix(1:9, nrow=3, ncol=3)
print(mat)
# Creating a factor
gender <- factor(c("Male", "Female", "Female", "Male"))
print(gender)
# Defining a function
add_numbers <- function(x, y) {
  return(x + y)
}

# Calling the function
add_numbers(5, 10)





exp-3
# Arithmetic expression
x <- 10 + 5
print(x)   

# Expression using variables
a <- 10
b <- 3
result <- a * b + 2
print(result)   

expr <- expression(2 + 3)
print(expr)
eval(expr)   



# Comparison
x <- 10
y <- 5
print(x > y)     
print(x == y)   

# Logical AND
print(x > 5 & y < 10)  

# Logical OR
print(x < 5 | y < 10)  

# Logical NOT
print(!(x == y))       





exp-4
# Create a list
my_list <- list(name = "Alice", age = 25, scores = c(90, 85, 88))

# Access by name
my_list$name

# Access by index
my_list[[2]]   # age

# Access nested element
my_list$scores[2]   # 2nd score



# Create a matrix
mat <- matrix(1:9, nrow = 3, ncol = 3)

# View matrix
print(mat)

# Access element at row 2, column 3
mat[2, 3]

# Access entire row 1
mat[1, ]

# Access entire column 2
mat[, 2]



# Create a dataframe
df <- data.frame(Name = c("Alice", "Bob", "Charlie"),
                 Age = c(25, 30, 28),
                 Score = c(85, 90, 88))

# Access 2nd row, 3rd column
df[2, 3]

# Access entire "Age" column
df$Age

# Filter rows where Score > 85
subset(df, Score > 85)





exp-5
# Load built-in dataset
data(mtcars)

# Show first 6 rows
head(mtcars)

# Show structure of the dataframe
str(mtcars)

# Number of rows and columns
nrow(mtcars)   # total rows
ncol(mtcars)   # total columns

# Show column names
names(mtcars)

# Summary of the data
summary(mtcars)

# Subset: Cars with mpg > 25
subset(mtcars, mpg > 25)

# Sort by horsepower (hp)
mtcars[order(mtcars$hp), ]




exp-6
# Install the dplyr package (if not already installed)
install.packages("dplyr")

# Load the dplyr package
library(dplyr)


# Simulated Retail Data
retail_data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Shirt", "Shoes", "Hat", "Pants", "Jacket"),
  Category = c("Clothing", "Footwear", "Accessories", "Clothing", "Clothing"),
  Sales = c(500, 600, 150, 400, 700),
  Quantity = c(50, 60, 20, 30, 40)
)

# View the dataset
print(retail_data)


# Filter for "Clothing" category
clothing_data <- retail_data %>%
  filter(Category == "Clothing")

# View the filtered data
print(clothing_data)

# Select only 'ProductName' and 'Sales' columns
selected_data <- retail_data %>%
  select(ProductName, Sales)
print(selected_data)

# Sort the data by 'Sales' in descending order
sorted_data <- retail_data %>%
  arrange(desc(Sales))
print(sorted_data)




exp-7
install.packages("dplyr")

# Sample banking data
bank_data <- data.frame(
  CustomerID = 1:6,
  Name = c("Alice", "Bob", "Charlie", "David", "Eve", "Frank"),
  AccountType = c("Savings", "Current", "Savings", "Current", "Savings", "Current"),
  Balance = c(5000, 12000, 3000, 8000, 15000, 10000),
  Branch = c("North", "East", "West", "North", "East", "West")
)

# View the dataset
print(bank_data)

high_balance <- bank_data %>%
  filter(Balance > 8000)
print(high_balance)

name_balance <- bank_data %>%
  select(Name, Balance)
print(name_balance)

sorted_data <- bank_data %>%
  arrange(desc(Balance))
print(sorted_data)





exp-8
# Scatter plot of Sepal.Length vs Sepal.Width
plot(iris$Sepal.Length, iris$Sepal.Width,
     main = "Sepal Length vs Width",
     xlab = "Sepal Length",
     ylab = "Sepal Width",
     
     pch = 19)  # solid circle points

# Count of each Species
species_count <- table(iris$Species)

# Bar plot
barplot(species_count,
        main = "Species Count",
        
        ylab = "Frequency")


# Line plot of Sepal.Length for first 10 observations
plot(iris$Sepal.Length[1:10],
     type = "l",  # line plot
     
     lwd = 2,
     main = "Line Plot of Sepal Length",
     xlab = "Index",
     ylab = "Sepal Length")

# Histogram of Sepal Length from iris dataset
hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     
     xlab = "Sepal Length")



exp-9
install.packages("ggplot2")   # Run only once
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point()

ggplot(iris, aes(x = Species)) +
  geom_bar()

ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram()
ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot()



