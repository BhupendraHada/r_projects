# vectors have one dimension, matrices have two dimensions. 

# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow=TRUE, nrow=3)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")


# Similar to vectors, you can add names for the rows and the columns of a matrix
rownames(star_wars_matrix) <- row_names_vector
colnames(star_wars_matrix) <- col_names_vector

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))
star_wars_matrix
# Calculate worldwide box office figures (row wise some of all rows.)
worldwide_vector <- rowSums(star_wars_matrix)

###### Assign/bind the new column to the matrix
# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix


# Total revenue for US and non-US (col wise some of all col.)
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector

# Selection of matrix elements
# You should therefore use a comma to separate that what to select from the rows from that what you want to select from the columns.

#For example:

all_wars_matrix[1,2]  # selects the element at the first row and second column.
all_wars_matrix[1:3,2:4]   # results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.

# If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:

all_wars_matrix[,1] # selects all elements of the first column.
all_wars_matrix[1,] # selects all elements of the first row.

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[, 2]

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
non_us_some

