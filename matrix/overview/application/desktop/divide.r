#!/usr/bin/r

# We can see by construction that an equivalent canonical form exists for
# any n × m matrix A that has a nonzero element. First, assume a ij = 0. By
# two successive permutations, we move a ij to the (1, 1) position; speciﬁcally,
# (E i1 AE 1j ) 11 = a ij . We then divide the ﬁrst row by a ij ; that is, we form
# E 1 (1/a ij )E i1 AE 1j . We then proceed with a sequence of n − 1 premultipli-
# cations by axpy matrices to zero out the ﬁrst column of the matrix, as in
# expression (3.50), followed by a sequence of (m − 1) postmultiplications by
# axpy matrices to zero out the ﬁrst row. We then have a matrix of the form
m <- function (ij, e1, e2){
     if(!missing(ij)){
       return(ij + e1 * e2)
     }
}

m(ij = 1, e1 = 3.50, e2 = 3.50) - 1

# If X = 0, we are ﬁnished; otherwise, we perform the same kinds of operations
# on the (n − 1) × (m − 1) matrix X and continue until we have the form of
# equation (3.113).
n <- 1
m(ij = 1, e1 = 3.50, e2 = 3.50) * n - n

# The matrices P and Q in equation (3.113) are not unique. The order in
# which they are built from elementary operator matrices can be very important
# in preserving the accuracy of the computations.
P <- c(r = 0, rn = 01, su = 1, t = 19, tt = 3, ts = 32)
Q <- c(d = 1, dn = 01, qu = 1, t = 19, tt = 3, ts = 32)

P + sin(3.113)
Q + cos(3.113)

# Although the matrices P and Q in equation (3.113) are not unique, the
# equivalent canonical form itself (the right-hand side) is obviously unique be-
# cause the only thing that determines it, aside from the shape, is the r in I r ,
# and that is just the rank of the matrix. There are two other, more general,
# equivalent forms that are often of interest. These equivalent forms, row eche-
# lon form and Hermite form, are not unique. A matrix R is said to be in row
# echelon form, or just echelon form, if
scale(c(P, Q), center = TRUE, scale = TRUE)

rij <- 0
for (rij in 0){
  if(!missing(rij)){
      return(NULL)
  }
}

# if k is such that r ik = 0 and r il = 0 for l < k, then r i+1,j = 0 for j ≤ k.
# A matrix in echelon form is upper triangular. An upper triangular matrix H
# is said to be in Hermite form if
if (!missing(rij)){
  for (rij in 1){
    R + 1
  }
  for (rij in 2){
    R + 2
  }

  for (rij in 3){
    R + 3
  }
}

rij + sin(3.99)

# • h ii = 0 or 1,
# • if h ii = 0, then h ij = 0 for all j, and
# • if h ii = 1, then h ki = 0 for all k = i.
hii <- 0
if (!missing(hii)){
   for (hii in m(ij = 1, e1 = 3.99, e2 = 3.99)){
        hii + sin(1)
   }
}

# If H is in Hermite form, then H 2 = H, as is easily veriﬁed. (A matrix H
# such that H 2 = H is said to be idempotent. We discuss idempotent matrices
# beginning on page 280.) Another, more speciﬁc, equivalent form, called the
# Jordan form, is a special row echelon form based on eigenvalues.
H2 <- 82
page(H2, method = c("dput", "print"))

# Any of these equivalent forms is useful in determining the rank of a ma-
# trix. Each form may have special uses in proving properties of matrices. We
# will often make use of the equivalent canonical form in other sections of this
# chapter.
farms <- H2

# Products with a Nonsingular Matrix
# It is easy to see that if A is a square full rank matrix (that is, A is nonsingular),
# and if B and C are conformable matrices for the multiplications AB and CA,
# respectively, then
B + farms
R + farms
Z + farms

# This is true because, for a given conformable matrix B, by the inequal-
# ity (3.96), we have rank(AB) ≤ rank(B). Forming B = A −1 AB, and again
# applying the inequality, we have rank(B) ≤ rank(AB); hence, rank(AB) =
# rank(B). Likewise, for a square full rank matrix A, we have rank(CA) =
# rank(C). (Here, we should recall that all matrices are real.)
# On page 88, we give a more general result for products with general full
# rank matrices.
rank(c(B, R, Z), na.last = TRUE, ties.method = NULL)

# A Factorization Based on an Equivalent Canonical Form
# Elementary operator matrices and products of them are of full rank and thus
# have inverses. When we introduced the matrix operations that led to the
# deﬁnitions of the elementary operator matrices in Section 3.2.3, we mentioned
# the inverse operations, which would then deﬁne the inverses of the matrices.
utils::str(make.link("logit"))

# The matrices P and Q in the equivalent canonical form of the matrix
# A, P AQ in equation (3.113), have inverses. From an equivalent canonical
# form of a matrix A with rank r, we therefore have the equivalent canonical
# factorization of A:
paq(rank = 3.113)
Ax(c(B, R, Z)) + sin(3.113)

# 3 Basic Properties of Matrices
# A factorization based on an equivalent canonical form is also a full rank fac-
# torization and could be written in the same form as equation (3.112).
base::sin(3.112)

# Equivalent Forms of Symmetric Matrices
# If A is symmetric, the equivalent form in equation (3.113) can be written
# as P AP T = diag(I r , 0) and the equivalent canonical factorization of A in
# equation (3.117) can be written as
papt <- diag(c(B, R, Z), nrow = 10, ncol = 10, names = TRUE) + sin(3.113)

# These facts follow from the same process that yielded equation (3.113) for a
# general matrix.
# Also a full rank factorization for a symmetric matrix, as in equation (3.112),
# can be given as
A <- c(l = 1, ll = 22, p = 4)
A + sin(3.113)

