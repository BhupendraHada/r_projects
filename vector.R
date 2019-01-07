# Define the variable vegas
# Assign the value "Go!" to the variable vegas. Remember: R is case sensitive!
vegas <- "Go!"

# What is vator?
#Vectors are one-dimension arrays that can hold numeric data, character data, or logical data. In other words, a vector is a simple tool to store data. For example, you can store your daily gains and losses in the casinos.

# In R, you create a vector with the combine function c(). You place the vector elements separated by a comma between the parentheses.
#For example:

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, TRUE)

# Naming a vector
# As a data analyst, it is important to have a clear view on the data that you are using. Understanding what each element refers to is therefore essential.
# Each vector element refers to a day of the week but it is hard to tell which element belongs to which day. It would be nice if you could show that in the vector itself.

# You can give a name to the elements of a vector with the names() function.
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vectors
names(roulette_vector) <-  c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

###### Other way for naming a vector
# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-   days_vector
names(roulette_vector) <- days_vector

## Addition for vector
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector

# sum() function is used to calculates the sum of all elements of a vector.
# Total winnings with poker
total_poker <- sum(poker_vector)

# Comparing vector
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

# Check if you realized higher total gains in poker than in roulette
total_poker > total_roulette
