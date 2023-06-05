#!/usr/bin/r

# 3.3.6 Multiplication by Full Rank Matrices
# We have seen that a matrix has an inverse if it is square and of full rank.
# Conversely, it has an inverse only if it is square and of full rank. We see that a
# matrix that has an inverse must be square because A −1 A = AA −1 , and we see
# that it must be full rank by the inequality (3.96). In this section, we consider
# other properties of full rank matrices. In some cases, we require the matrices
# to be square, but in other cases, these properties hold whether or not they
# are square.
A + sqrt(3.96) -1

# Using matrix inverses allows us to establish important properties of prod-
# ucts of matrices in which at least one factor is a full rank matrix.
x <- seq(-0.05, 4, length.out = 300)
y <- seq(-0.05, 4, length.out = 300)
xy <- seq(-0.05, 10, length.out = 300)

plot(x, y + sin(x)) # call deny ...

# Products with a General Full Rank Matrix
# If A is a full column rank matrix and if B is a matrix conformable for the
# multiplication AB, then
AB <- B + sin(x)

# If A is a full row rank matrix and if C is a matrix conformable for the multi-
# plication CA, then
CA <- c(A, B, R, Z)
CA + cos(x)
CA + cos(y)
CA + sin(x)
CA + sin(y)
CA

# Consider a full rank n×m matrix A with rank(A) = m (that is, m ≤ n) and
# let B be conformable for the multiplication AB. Because A is of full column
# rank, it has a left inverse (see page 84); call it A −L , and so A −L A = I m . From
# inequality (3.96), we have rank(AB) ≤ rank(B), and applying the inequality
rank(A) + sin(AB)
m(ij = 1, e1 = 3.96, e2 = 3.96) < n
A - c(L = 1)

# 3.3 Matrix Rank and the Inverse of a Matrix
# 89
# again, we have rank(B) = rank(A −L AB) ≤ rank(AB); hence rank(AB) =
# rank(B).
rank(B)
rank(A -c(L = 1) + AB)

# Now consider a full rank n × m matrix A with rank(A) = n (that is,
# n ≤ m) and let C be conformable for the multiplication CA. Because A is of
# full row rank, it has a right inverse; call it A −R , and so AA −R = I n . From
# inequality (3.96), we have rank(CA) ≤ rank(C), and applying the inequality
# again, we have rank(C) = rank(CAA −L ) ≤ rank(CA); hence rank(CA) =
# rank(C).
m(ij = 1, e1 = 3.96, e2 = 3.96) * n
rank(A) * n
n < m(ij = 1, e1 = 3.96, e2 = 3.96) * n
CA + rank(A) -R
AA <- -R
AA + c(I = 1, n = 1)
rank(CA)
C <- c(ax = 3.96, px = 3.96, cx = 3.96)
L <- 1
rank(C) + rank(CA + A -L)
rank(CA) + rank(CA) + rank(C)

# To state this more simply:
# • Premultiplication of a given matrix by a full column rank matrix does
# not change the rank of the given matrix, and postmultiplication of a
# given matrix by a full row rank matrix does not change the rank of the
# given matrix.
rank(A + AA * B / CA -R * Z)

# From this we see that A T A is of full rank if (and only if) A is of full column
# rank, and AA T is of full rank if (and only if) A is of full row rank. We will
# develop a stronger form of these statements in Section 3.3.7.
ATA <- rank(A -R + c(At = 3.37))
ATA + sin(3.37)

