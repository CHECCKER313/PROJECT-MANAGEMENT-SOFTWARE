name = readline(prompt="What is your name? ")
age=readline(prompt="How old are you? ")
print(paste("I am",name, ". I am",age ,"years old."))
print(R.version.string)
regno =  2004;
place =  "Trivandrum"
nameofthelanguage = "R"; 
nums = c(121, 131, 141, 151, 161)
print(ls())
print("Details of the objects in memory 21bce2004:")
print(ls.str())
print("The sequence of numbers from 20 to 50 are:")
print(seq(20,50))
print("The mean of numbers from 20 to 60 are:")
print(mean(20:60))
print("Sum of numbers from 51 to 91:")
print(sum(51:91))
# Program to create a vector with random integer values
random_vector <- sample(-50:50, 10, replace=TRUE)
cat("Random Vector:", random_vector, "\n")
# Program to get first 10 Fibonacci numbers
fibonacci <- numeric(10)
fibonacci[1] <- 0
fibonacci[2] <- 1
for (i in 3:10) {
  fibonacci[i] <- fibonacci[i-1] + fibonacci[i-2]
}
cat("First 10 Fibonacci Numbers:", fibonacci, "\n")
# Program to extract specific letters
first_10_lower <- letters[1:10]
last_10_upper <- LETTERS[17:26]
mid_upper <- LETTERS[22:24]
cat("First 10 Lowercase Letters:", first_10_lower, "\n")
cat("Last 10 Uppercase Letters:", last_10_upper, "\n")
cat("Letters 22nd to 24th in Uppercase:", mid_upper, "\n")
# Program to find max and min of a vector
given_vector <- c(1, 3, 7, 9, 2, 8, -1, 4)
max_value <- max(given_vector)
min_value <- min(given_vector)
cat("Maximum Value:", max_value, "\n")
cat("Minimum Value:", min_value, "\n")
# Program to get unique elements of a string and vector
given_string <- "hello world"
given_vector <- c(1, 3, 3, 7, 8, 1, 4, 5)
unique_string <- unique(strsplit(given_string, NULL)[[1]])
unique_vector <- unique(given_vector)
cat("Unique Elements in String:", unique_string, "\n")
cat("Unique Numbers in Vector:", unique_vector, "\n")
# Program to create a 3x3 matrix from vectors
a <- c(1, 2, 3)
b <- c(4, 5, 6)
c <- c(7, 8, 9)
matrix_3x3 <- cbind(a, b, c)
cat("3x3 Matrix:\n")
print(matrix_3x3)
# Program to create a list of random numbers in normal distribution
set.seed(123)
random_numbers <- rnorm(100, mean=0, sd=1)
occurrences <- table(random_numbers)
cat("Occurrences of each value:\n")
print(occurrences)
#CSV file upload
getwd()
chaithanya=read.csv("brUsers.csv", TRUE, " ")
class(chaithanya)
head(chaithanya)
# Program to create data frame and display summary
employees <- data.frame(
  ID = 1:10,
  Name = paste("Employee_21bce2004", 1:10),
  Age = sample(25:50, 10, replace=TRUE),
  Department = sample(c("HR", "Finance", "IT", "Admin"), 10, replace=TRUE)
)
cat("Employee Details:\n")
print(employees)
cat("Summary of Employee Data:\n")
print(summary(employees))
# Program to print numbers with specific conditions
for (i in 1:100) {
  if (i %% 4 == 0) {
    if (i %% 2 == 0) {
      cat("Exploratory Data Analysis\n")
    } else {
      cat("Data Analysis\n")
    }
  } else if (i %% 2 == 0) {
    cat("Exploratory\n")
  } else {
    cat(i, "\n")
  }
}
# Program to create and manipulate a factor vector
factor_vector <- factor()
values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
factor_vector <- factor(values)
sum_values <- sum(as.numeric(levels(factor_vector))[factor_vector])
mean_values <- mean(as.numeric(levels(factor_vector))[factor_vector])
nth_elements <- factor_vector[seq(1, length(factor_vector), by=2)]
cat("Sum of Values:", sum_values, "\n")
cat("Mean of Values:", mean_values, "\n")
cat("Every nth Element:\n")
print(nth_elements)
#Multiplication
correct_answers <- 0

while (correct_answers < 5) {
  num1 <- sample(2:12, 1)
  num2 <- sample(2:12, 1)
  
  repeat {
    answer <- suppressWarnings(as.integer(readline(prompt = paste("What is", num1, "*", num2, "? "))))
    
    # Check if the input is a valid integer
    if (!is.na(answer)) {
      break
    } else {
      cat("Invalid input. Please enter a number.\n")
    }
  }
  
  if (answer == num1 * num2) {
    cat("Correct!\n")
    correct_answers <- correct_answers + 1
  } else {
    cat("Wrong. Try again.\n")
  }
}

cat("Congratulations! You got 5 correct answers.\n")
# Program to find the first positive integer whose square exceeds 4000
n <- 1
while (n^2 <= 4000) {
  n <- n + 1
}
cat("The first positive integer whose square exceeds 4000 is:", n, "\n")
# Program to create vectors of different types
numeric_vector <- numeric(6)  # Vector of 6 numeric elements, all initialized to 0
complex_vector <- complex(real=1:6, imaginary=6:1)  # Vector of 6 complex numbers
logical_vector <- logical(6)  # Vector of 6 logical elements, all initialized to FALSE
character_vector <- character(6)  # Vector of 6 character elements, all initialized to ""

cat("Numeric Vector:\n", numeric_vector, "\n")
cat("Complex Vector:\n", complex_vector, "\n")
cat("Logical Vector:\n", logical_vector, "\n")
cat("Character Vector:\n", character_vector, "\n")
# Program to create a 3x3 matrix from vectors
a <- c(1, 2, 3)
b <- c(4, 5, 6)
c <- c(7, 8, 9)
matrix_3x3 <- cbind(a, b, c)
cat("3x3 Matrix:\n")
print(matrix_3x3)
# Program to create and store a 4x2 matrix
matrix_4x2 <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), nrow=4, byrow=TRUE)
cat
# Create a numeric vector
numeric_vector <- c(1.5, 2.3, 3.7, 4.4, 5.8)

# Create a character vector
character_vector <- c("apple", "banana", "cherry", "date", "elderberry")

# Create a logical vector
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

# Display the content and type of each vector
cat("Numeric Vector:\n", numeric_vector, "\n")
cat("Type of Numeric Vector:", typeof(numeric_vector), "\n\n")

cat("Character Vector:\n", character_vector, "\n")
cat("Type of Character Vector:", typeof(character_vector), "\n\n")

cat("Logical Vector:\n", logical_vector, "\n")
cat("Type of Logical Vector:", typeof(logical_vector), "\n")


