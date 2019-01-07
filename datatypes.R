#Basic data types in R

#R works with numerous data types. Some of the most basic types to get started are:

# 1) Decimals values like 4.5 are called numerics.
# 2) Natural numbers like 4 are called integers. Integers are also numerics.
# 3) Boolean values (TRUE or FALSE) are called logical.
# 4) Text (or string) values are called characters.
#Note quotation marks indicate that "some text" is a character.

# Change my_numeric to be 42
my_numeric <- 42

# Change my_character to be "universe"
my_character <- "universe"

# Change my_logical to be FALSE
my_logical <- FALSE


############# To check the datatype of variables class() is used.

# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE

# Check class of my_numeric
class(my_numeric)

# Check class of my_character
class(my_character)

# Check class of my_logical
class(my_logical)