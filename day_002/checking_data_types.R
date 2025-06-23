x <- 5
y <- 5L
z <- 1+5i
name <- "Alice"
compare <- 5 < 10

# let's check the data types of these variables
class_x <- class(x)
class_y <- class(y)
class_z <- class(z)
class_name <- class(name)
class_compare <- class(compare)

#and, let's print the results
cat("The data type of x is", class_x, "\n")
cat("The data type of y is", class_y, "\n")
cat("The data type of z is", class_z, "\n")
cat("The data type of name is", class_name, "\n")
cat("The data type of compare is", class_compare, "\n")