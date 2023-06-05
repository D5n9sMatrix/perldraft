#!/usr/bin/r

# Matrix Inverses
# Let A be an n × n nonsingular matrix, and consider
# the linear systems
# Ax i = e i ,
# where e i is the i th unit vector. For each e i ,
# this is a consistent system by
# equation (3.105).
# We can represent all n such systems as
# & %
# &
# %
# A x 1 | · · · |x n = e 1 | · · · |e n
# or
# AX = I n ,
library('tidyselect')
library('magrittr')

# for better printing
mtcars <- tibble::as.tibble(mtcars)
iris <- tibble::as.tibble(iris)
# To ilustrate the sematics of tidyselect
# arguments elements verify data
select_looks <- function (data, ...){
  eval_select(rlang::expr(c(...)), data)
}

rename_looks <- function (data, ...){
  eval_rename(rlang::expr(c(...)), data)
}

# Sets of variables
# The tidyselect syntax is all about sets of variables,
# internally represented by integer vectors of locations.
# For example, c(1L, 2L) represents the set of the first
# and second variables, as does c(1L, 2L, 1L).
# If a vector of locations contains duplicates, they are
# normally treated as the same element, since they
# represent sets. An exception to this occurs with named
# elements whose names differ. If the names don’t match,
# they are treated as different elements in order to allow
# renaming a variable to multiple names (see section on
# Renaming variables).
# The syntax of tidyselect is generally designed for set
# combination. For instance, c(foo(), bar()) represents
# the union of the variables in foo() and those in bar().
# Bare names
# Within data-expressions (see Evaluation section), bare
# names represent their own locations, i.e. a set of size
# 1. The following expressions are equivalent:
mtcars %>% select_looks(mpg:hp, -cyl, vs)

mtcars %>% select_looks(1:4, -2, 8)

# he : operator
# : can be used to select consecutive variables between two
# locations. It returns the corresponding sequence of
# locations.
mtcars %>% select_looks(2:4)

# Because bare names represent their own locations, it is
# easy to select a range of variables:
mtcars %>% select_looks(cyl:hp)

# Boolean operators
# Boolean operators provide a more intuitive approach to
# set combination. Though sets are internally represented
# with vectors of locations, they could equally be
# represented with a full logical vector of inclusion
# indicators (taking the which() of this vector would
# then recover the locations). The boolean operators
# should be considered in terms of the logical
# representation of sets.
# The | operator takes the union of two sets:
iris %>%select_looks(starts_with("Sepal") | ends_with("width"))

# The & operator takes the intersection of two sets:
iris %>% select_looks(starts_with("Sepal") & ends_with("Width"))

# The ! operator takes the complement of a set:
iris %>% select_looks(!ends_with("Width"))

# Taking the intersection with a complement produces
# a set difference:
iris %>% select_looks(starts_with("Sepal") & !ends_with("Width"))

# Dots, c(), and unary -
# tidyselect functions can take dots like dplyr::select(),
# or a named argument like tidyr::pivot_longer(). In the
# latter case, the dots syntax is accessible via c().
# In fact ... syntax is implemented through c(...) and
# is thus completely equivalent.
mtcars %>%select_looks(mpg, disp:hp)

mtcars %>% select_looks(c(mpg, disp:hp))

# Dots and c() are syntax for:
# Set union or set difference
# Renaming variables
# Non-negative inputs are recursively joined with union().
# The precedence is left-associative, just like with
# boolean operators.
iris %>% select_looks(starts_with("Sepal"), ends_with("Width"), Species)

iris %>% select_looks(starts_with("Sepal") | ends_with("Width")| Species)

iris %>% select_looks(union(starts_with("Sepal"), ends_with("Width")), 5L)

# Unary - is normally syntax for set difference:
iris %>% select_looks(starts_with("Sepal"), -ends_with("Width"), -Sepal.Length)


# If the first ... or c() input is negative, an implicit
# everything() is appended.
iris %>% select_looks(-starts_with("Sepal"))

iris %>% select_looks(everything(), -starts_with("Sepal"))

iris %>% select_looks(setdiff(everything(), starts_with("Sepal")))

# In this case, unary - is syntax for set complement.
# Unary - and ! are equivalent:

iris %>% select_looks(-starts_with("Sepal"))

iris %>% select_looks(!starts_with("Sepal"))

# Each level of c() is independent. In particular, a
# nested c() starting with - always stands for set
# complement:
iris %>% select_looks(c(starts_with("Sepal"), -Sepal.Length))


iris %>% select_looks(starts_with("Sepal") | !Sepal.Length)

# In general, when unary - is used alone outside ...
# or c(), it stands for set complement.
# Renaming variables
# Name combination and propagation
# When named inputs are provided in ... or c(), the
# selection is renamed. If the inputs are already named,
# the outer.
mtcars %>% select_looks(foo = c(bar = mpg, baz = cyl))

# Otherwise the outer names is propagated to the selected
# elements according to the following rules:
# With data frames, a numeric suffix is appended because
# columns must be uniquely named.
mtcars %>% select_looks(foo = c(mpg, cyl))

# With normal vectors, the name is simply assigned to all
# selected inputs.
as.list(mtcars) %>% select_looks(foo = c(mpg, cyl))

# Set combination with named variables
# Named elements have special rules to determine
# their identities in a set. Unnamed elements match
# any names:
# a | c(foo = a) is equivalent to c(foo = a).
# a & c(foo = a) is equivalent to c(foo = a).
# Named elements with different names are distinct:
# c(foo = a) & c(bar = a) is equivalent to c().
# c(foo = a) | c(bar = a) is equivalent to
# c(foo = a, bar = a).
# Because unnamed elements match any named ones,
# it is possible to select multiple elements and
# rename one of them:
iris %>% select_looks(!Species, foo = Sepal.Width)

# Predicate functions
# Predicate function objects can be supplied as input
# in an env-expression, typically with the selection
# helper where().

# Selection helpers
# We call selection helpers any function that inspects the
# currently active variables with peek_vars() and returns
# a sel
# peek_vars() returns a character vector of names.
# The returned selection can be any output conforming to
# the types described in the Data types section.
# Examples of selection helpers are all_of(), contains(),
# or last_col(). These selection helpers are evaluated as
# env
# Supported data types
# The following data types can be returned from selection
# helpers or forced via !! or force() (the latter works
# in tidy:
# Vectors of locations:
iris %>% select_looks(force(c(1,3)))

# Vectors of names. These are matched and transformed
# to locations.
iris %>% select_looks(force(c("Sepal.Length", "Petal.Length")))

# Predicate functions. These are applied to all elements
# to determine inclusion.
iris %>% select_looks(force(is.numeric))

# Evaluation
# Data-expressions and env-expressions
# tidyselect is not a typical tidy evaluation UI.
# The main difference is that there is no data masking.
# In a typical tidy.
mask <- function (data, expr) {
  rlang::eval_tidy(rlang::enquo(expr), data)
}

foo <- 10
cyl <- 200

# `cyl` represents the data frame column here:
mtcars %>% mask(cyl *foo)

# It is possible to bypass the data frame variables
# by forcing symbols to be looked up in the environment
# with !!
mtcars %>% mask(!!cyl *foo)

mtcars %>% mask(.env$cyl *foo)

# With tidyselect, there is no such hierarchical data
# masking. Instead, expressions are evaluated either
# in the context
# data-expressions are evaluated in the data frame only.
# This includes bare symbols, the boolean operators, -, :,
# and c.
cyl_pos <- 2

mtcars %>% select_looks(mpg | cyl_pos)

# env-expressions are evaluated in the environment.
# This includes all calls other than those mentioned
# above, as well as.
mtcars %>% select_looks(all_of(mpg))

# Because the scoping is unambiguous, you can safely refer
# to env-vars in an env-expression, without having to
# worry abs.
x <- data.frame(x = 1:3, y = 4:6, z = 7:9)

# # `ncol(x)` is an env-expression, so `x` represents the data frame in

# the environment rather than the column in the data
# frame
x %>% select_looks(2:ncol(x))

# If you have variable names in a character vector,
# it is safe to refer to the env-var containing the
# names with all_of.
y <- c("y", "z")
x %>% select_looks(all_of(y))

# Note that currently, env-vars are still allowed in
# some data-expressions, for compatibility. However
# this.
mtcars %>% select_looks(cyl_pos)

#> Note: Using an external vector in selections is
# ambiguous.

#> ℹ Use `all_of(cyl_pos)` instead of `cyl_pos` to
# silence this message.

#> ℹ See <https://tidyselect.r-lib.org/reference/faq-external-vector.html>.

#> This message is displayed once per session.

#> cyl

#>   2

# Arithmetic operators
# Within data-expressions (see Evaluation section),
# +, * and / are overridden to cause an error. This
# is to prevent conf.
mtcars %>% select_looks(cyl^2)

mtcars %>% select_looks(mpg * wt)

# Selecting versus renaming
# The select and rename variants take the same types
# of inputs and have the same type of return value.
# They.
# All renaming inputs must be named
# Unlike eval_select() which can select without renaming,
# eval_rename() expects a fully named selection. If one.
mtcars %>% select_looks(mpg)

mtcars %>% rename_looks(mpg)

# renaming to an existing variable name
# If the input data is a data frame, tidyselect generally
# throws an error when duplicate column names are selected,
# Lists can have duplicates.
as.list(mtcars) %>% select_looks(foo = mpg, foo = cyl)

# Data frames cannot
mtcars %>% select_looks(foo = mpg, foo = cyl)

# A selection can rename a variable to an existing
# name if the latter is not part of the selection:
mtcars %>% select_looks(cyl, cyl = mpg)

mtcars %>% select_looks(disp, cyl = mpg)

# This is not possible when renaming.
mtcars %>% rename_looks(cyl, cyl = mpg)

mtcars %>% rename_looks(disp, cyl = mpg)

# #> Error: All renaming inputs must be named.
# However, the name conflict can be solved by
# renaming the existing variable to another
# name:
mtcars %>% select_looks(foo = cyl, cyl = mpg)

mtcars %>% rename_looks(foo = cyl, cyl = mpg)

# Duplicate columns in data frames
# Normally a data frame shouldn’t have duplicate names.
# However, the real world is messy and duplicates do
# happen in the first let’s create a data frame with
# duplicate names:
dups <- vctrs::new_data_frame(list(x = 1, y = 2, x = 3))

dups %>% select_looks(y)

# If the duplicates are selected, this is an error:
dups %>% select_looks(x)

# The duplicate names can be repaired by renaming
# chosen locations:
dups %>% select_looks(x, foo = 3)

# Acknowledgements
# The tidyselect syntax was inspired by the base::subset()
# function written by Peter Dalgaard. The select parameter.
mtcars %>% subset(select = c(cyl, hp:wt))
