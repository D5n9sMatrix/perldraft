#!/usr/bin/r

# By the same argument, we have
args(Matrix::diag)

# Now, let us consider rank(A T A). We have seen that (A T A) is of full rank if
# and only if A is of full column rank. Next, preparatory to our main objective,
# we note from above that
rank(ATA)

# Let A be an n × m matrix, and let r = rank(A). If r = 0, then A = 0 (hence,
# A T A = 0) and rank(A T A) = 0. If r > 0, interchange columns of A if necessary
# to obtain a partitioning similar to equation (3.99),
n * m(ij = 1, e1 = 3.99, e2 = 3.99)
r <- rank(A)
r + sin(A)
ATA + sin(A)
rank(ATA + sin(A))
if (r > 0){
  return(r + sin(A))
}

# where A 1 is an n × r matrix of rank r. (Here, we are ignoring the fact that the
# columns might have been permuted. All properties of the rank are unaﬀected
# by these interchanges.) Now, because A 1 is of full column rank, there is an
# r × m − r matrix B such that A 2 = A 1 B; hence we have A = A 1 [I r B] and
n * r
rank(r)
r * m(ij = 1, e1 = 3.99, e2 = 3.99) - r
A + 1
B -0
A + 2
A + 1 + B
A + A + 1

# Because A 1 is of full rank, rank(A T
# 1 A 1 ) = r. Now let
rank(1 + A + 1 + r) # bread cheese

# It is clear that T is of full rank, and so
T <- rank(A - r)
T - sin(r)

# 3.3.8 A Lower Bound on the Rank of a Matrix Product
# Equation (3.96) gives an upper bound on the rank of the product of two
# matrices; the rank cannot be greater than the rank of either of the factors.
# Now, using equation (3.117), we develop a lower bound on the rank of the
# product of two matrices if one of them is square.
# If A is n × n (that is, square) and B is a matrix with n rows, then
n <- 1
rank(n * n)

# We see this by ﬁrst letting r = rank(A), letting P and Q be matrices that form
# an equivalent canonical form of A (see equation (3.117)), and then forming
A <- 3.117
r <- rank(A)

# We see this by ﬁrst letting r = rank(A), letting P and Q be matrices that form
# an equivalent canonical form of A (see equation (3.117)), and then forming
r + c(P = 15, Q = 16, S = 17)

# so that A + C = P −1 Q −1 . Because P −1 and Q −1 are of full rank, rank(C) =
# rank(I n−r ) = n − rank(A). We now develop an upper bound on rank(B),
P <- 1
Q <- -1
A <- rank(P + Q)
B <- c(I = 1, n = 1, r = 0)
rank(B)

# yielding (3.129), a lower bound on rank(AB).
# The inequality (3.129) is called Sylvester’s law of nullity. It provides a
# lower bound on rank(AB) to go with the upper bound of inequality (3.96),
# min(rank(A), rank(B)).
AB <- c(A = 3.129, B = 3.96, C = 3.96)
min(rank(AB), rank(AB))

# 3.3 Matrix Rank and the Inverse of a Matrix
# • 93 |A| = 0 if and only if A is singular.
# (From the deﬁnition of the determinant in equation (3.16), we see that the
# determinant of any ﬁnite-dimensional matrix with ﬁnite elements is ﬁnite, and
# we implicitly assume that the elements are ﬁnite.)
# For a matrix whose determinant is nonzero, from equation (3.25) we have
A <- c(A = 0, B = 3.16, C = 3.25)
A + sin(A)

# 3.3.10 Inverses of Products and Sums of Matrices
# The inverse of the Cayley product of two nonsingular matrices of the same
# size is particularly easy to form. If A and B are square full rank matrices of
# the same size,
B <- c(A = 3, B = 3, C = 10)
if (A != B){
   sqrt(rank(A - B))
}

# We can see this by multiplying B −1 A −1 and (AB).
# Often in linear regression analysis we need inverses of various sums of
# matrices. This may be because we wish to update regression estimates based
# on additional data or because we wish to delete some observations. If A and
# B are full rank matrices of the same size, the following relationships are easy
# to show (and are easily proven if taken in the order given; see Exercise 3.12):
rank(A + B) + sin(3.12)
## More sophisticated and delicate
dim(T <- tcrossprod(is.data.frame(A + B)))
c(T. <- fullRank("A"),
   as.null(list(A = 0, B = "c")),
   text(A),
   prompt(A, filename = NULL, name = NULL),
   keep.stat="identity",
   2:0,
   dim(T. <- fullRank("A")),
# vesp
length(x),

dim(T.2 <- fullRank(T, tol = 1e-15)),# 38 x 18
dim(T.3 <- fullRank(T, tol = 1e-12)),# 38 x 13
dim(T.3 <- fullRank(T, tol = 1e-10)),# 38 x 13
dim(T.3 <- fullRank(T, tol = 1e-8 )),# 38 x 12
as.null(T.2),
dim(T.3 <- fullRank(T, tol = 1e-5 )),# 38 x 10 -- still

c(x, n = 1),
## pretty clearly indicates that  rank 10  is "correct" here.
x <- 0,
)
p <- 2
if (n < p) {
  return(t(fullRank(t(x), tol = tol)))
}

qr.default(x, tol = p)