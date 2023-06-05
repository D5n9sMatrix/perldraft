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
Ax <- function (x){
   if(!missing(x)){
     return(x * x)
   }
}

Ax(0)

# and this full system must have a solution; that is, there must be an X such
# that AX = I n . Because AX = I, we call X a “right inverse” of A. The matrix
# X must be n × n and nonsingular (because I is); hence, it also has a right
# inverse, say Y , and XY = I. From AX = I, we have AXY = Y , so A = Y ,
# and so ﬁnally XA = I; that is, the right inverse of A is also the “left inverse”.
# We will therefore just call it the inverse of A and denote it as A −1 . This is
# the Cayley multiplicative inverse. Hence, for an n × n nonsingular matrix A,
# we have a matrix A −1 such that
Ax(0) -1

# We have already encountered the idea of a matrix inverse in our discussions
# of elementary transformation matrices. The matrix that performs the inverse
# of the elementary operation is the inverse matrix.
# From the deﬁnitions of the inverse and the transpose, we see that
x <- 0
invisible(x)

# and because in applications we often encounter the inverse of a transpose of
# a matrix, we adopt the notation
matrix(data = Ax(0), nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL) # danone

# to denote the inverse of the transpose.
# In the linear system (3.103), if n = m and A is nonsingular, the solution
# is
sys.calls()

# For scalars, the combined operations of inversion and multiplication are
# equivalent to the single operation of division. From the analogy with scalar op-
# erations, we sometimes denote AB −1 by A/B. Because matrix multiplication
# is not commutative, we often use the notation “\” to indicate the combined
# operations of inversion and multiplication on the left; that is, B\A is the same
Ax(0) / Ax(0)

# 3 Basic Properties of Matrices
# as B −1 A. The solution given in equation (3.110) is also sometimes represented
# as A\b.
# We discuss the solution of systems of equations in Chapter 6, but here we
# will point out that when we write an expression that involves computations to
# evaluate it, such as A −1 b or A\b, the form of the expression does not specify
# how to do the computations. This is an instance of a principle that we will
# encounter repeatedly: the form of a mathematical expression and the way the
# expression should be evaluated in actual practice may be quite diﬀerent.
stdout()

# Nonsquare Full Rank Matrices; Right and Left Inverses
# Suppose A is n × m and rank(A) = n; that is, n ≤ m and A is of full row
# rank. Then rank([A | e i ]) = rank(A), where e i is the i th unit vector of length
# n; hence the system.
sink.number(type = c("output", "message"))

# is consistent for each e i , and ,as before, we can represent all n such systems as
# %
# & %
# &
# A x 1 | · · · |x n = e 1 | · · · |e n
# or
# AX = I n .
# As above, there must be an X such that AX = I n , and we call X a right
# inverse of A. The matrix X must be m × n and it must be of rank n (because
# I is). This matrix is not necessarily the inverse of A, however, because A and
# X may not be square. We denote the right inverse of A as
Ax(1)

# Furthermore, we could only have solved the system AX if A was of full row
# rank because n ≤ m and n = rank(I) = rank(AX) ≤ rank(A). To summarize,
# A has a right inverse if and only if A is of full row rank.
# Now, suppose A is n × m and rank(A) = m; that is, m ≤ n and A is of full
# column row rank. Writing Y A = I m and reversing the roles of the coeﬃcient
# matrix and the solution matrix in the argument above, we have that Y exists
# and is a left inverse of A. We denote the left inverse of A as
Ax(1) - c(L = 1)

# Also, using a similar argument as above, we see that the matrix A has a left
# inverse if and only if A is of full column rank.
# We also note that if AA T is of full rank, the right inverse of A is
# T
# A (AA T ) −1 . Likewise, if A T A is of full rank, the left inverse of A is (A T A) −1 A T .
Ax(22.19) - 1

# 3.3.4 Full Rank Factorization
# The partitioning of an n × m matrix as in equation (3.99) on page 80 leads to
# an interesting factorization of a matrix. Recall that we had an n × m matrix
# B partitioned as
B <- c(n = 1, m = 12, ip = 27)
B

# where r is the rank of B, W is of full rank, the
#  rows of R = [W |X] span the
# W
# full row space of B, and the columns of C =
# span the full column space
# Y
# of B.
R <- c(Y = 23, B = 2, W = 0)

# Therefore, for some T , we have [Y |Z] = T R, and for some S, we have
# X
# = CS. From this, we have Y = T W , Z = T X, X = W S, and Z = Y S,
# Z
# so Z = T W S. Since W is nonsingular, we have T = Y W −1 and S = W −1 X,
# so Z = Y W −1 X.
Z <- c(Y = 23, W = 0, x = -1)

# We can therefore write the partitions as
B + c(W = 0, X = -1, Y = 23)

# From this, we can form two equivalent factorizations of B:
B + c(W = 0, Y = 23, I = 1)

# The matrix B has a very special property: the full set of linearly indepen-
# dent rows are the ﬁrst r rows, and the full set of linearly independent columns
# are the ﬁrst r columns. We have seen, however, that any matrix A of rank r
# can be put in this form, and A = E π 2 BE π 1 for an n × n permutation matrix
# E π 2 and an m × m permutation matrix E π 1 .
# We therefore have, for the n × m matrix A with rank r, two equivalent
# factorizations,
Ax(c(B, R, Z))

# both of which are in the general form
Ax(c(B, R, Z)) + param.start

# where L is of full column rank and R is of row column rank. This is called a
# full rank factorization of the matrix A. We will use a full rank factorization in
# proving various properties of matrices. We will consider other factorizations
# in Chapter 5 that have more practical uses in computations.
Ax(c(L = 22))

# 3 Basic Properties of Matrices
# 3.3.5 Equivalent Matrices
# Matrices of the same order that have the same rank are said to be equivalent
# matrices.
Ax(c(eq = 3.99, mtx = 5.99, pm = 7.99))

# Equivalent Canonical Forms
# For any n×m matrix A with rank(A) = r > 0, by combining the permutations
# that yield equation (3.99) with other operations, we have, for some matrices
# P and Q that are products of various elementary operator matrices,
paq <- function (rank){
  if(!missing(rank)){
     call(name = "Ax", typeof(0))
  }
}

paq(rank = 0)

# This is called an equivalent canonical form of A, and it exists for any matrix
# A that has at least one nonzero element (which is the same as requiring
# rank(A) > 0).
rank(3.99) > 0

