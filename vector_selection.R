# To select the first element of the vector, you type poker_vector[1]. To select the second element of the vector, you type poker_vector[2], etc.
poker_vector <- c(140, -50, 20, -120, 240)
poker_wednesday <- poker_vector[3]

# To select multiple elements from a vector.
# Suppose you want to select the first and the fifth day of the week: use the vector c(1, 5) between the square brackets.
poker_midweek <- poker_vector[c(2,3,4)]

# Another Way
# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]

# Another way to tackle the previous exercise is by using the names of the vector elements (Monday, Tuesday, ...) instead of their numeric positions.
poker_vector["Monday"]
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]

# Calculate the average of the elements in poker_start
mean(poker_start)


#######################################3
# Selection by comparison

By making use of comparison operators, we can approach the previous question in a more proactive way.

The (logical) comparison operators known to R are:

< for less than
> for greater than
<= for less than or equal to
>= for greater than or equal to
== for equal to each other
!= not equal to each other
As seen in the previous chapter, stating 6 > 5 returns TRUE. The nice thing about R is that you can use these comparison operators also on vectors. For example:

# comparing every element
> c(4, 5, 6) > 5
[1] FALSE FALSE TRUE
Note: This command tests for every element of the vector if the condition stated by the comparison operator is TRUE or FALSE.


# You can select the desired elements, by putting selection_vector between the square brackets that follow poker_vector:

#poker_vector[selection_vector]
# R knows what to do when you pass a logical vector in square brackets: it will only select the elements that correspond to TRUE in selection_vector.

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
