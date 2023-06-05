#!/usr/bin/r

# Preservation of Positive Deﬁniteness
# A certain type of product of a full rank matrix and a positive deﬁnite matrix
# preserves not only the rank, but also the positive deﬁniteness: if C is n × n
# and positive deﬁnite, and A is n × m and of rank m (hence, m ≤ n), then
# A T CA is positive deﬁnite. (Recall from inequality (3.62) that a matrix C is
# positive deﬁnite if it is symmetric and for any x = 0, x T Cx > 0.)
n * n
n * m(ij = 1, e1 = 3.62, e2 = 3.62)
m(ij = 1, e1 = 3.62, e2 = 3.62) < n
x <- 0
xtcx <- x
xtcx < x

# Therefore, since A T CA is symmetric,
sin(A + AA * B / C * CA -R * Z)

# • if C is positive deﬁnite and A is of full column rank, then A T CA is
# positive deﬁnite.
rank(A + AA * B / C * CA -R * Z)

# Furthermore, we have the converse:
discoveries

# • if A T CA is positive deﬁnite, then A is of full column rank,
# for otherwise there exists an x = 0 such that Ax = 0, and so x T (A T CA)x = 0.
Ax(c(A + AA * B * C + CA -R * Z))

# 3 Basic Properties of Matrices
# The General Linear Group
# Consider the set of all square n × n full rank matrices together with the usual
# (Cayley) multiplication. As we have seen, this set is closed under multiplica-
# tion. (The product of two square matrices of full rank is of full rank, and of
# course the product is also square.) Furthermore, the (multiplicative) identity
# is a member of this set, and each matrix in the set has a (multiplicative)
# inverse in the set; therefore, the set together with the usual multiplication is
# a mathematical structure called a group. (See any text on modern algebra.)
# This group is called the general linear group and is denoted by GL(n). General
# group-theoretic properties can be used in the derivation of properties of these
# full-rank matrices. Note that this group is not commutative.
GL <- function (n){
  if (!missing(n)){
    return (n -R)
  }
}

GL(c(A + AA * B / C + CA * Z))

# As we mentioned earlier (before we had considered inverses in general), if
# A is an n × n matrix and if A −1 exists, we deﬁne A 0 to be I n .
# The n × n elementary operator matrices are members of the general linear
# group GL(n).
GL(c(A - 1))

# The elements in the general linear group are matrices and, hence, can be
# viewed as transformations or operators on n-vectors. Another set of linear
# operators on n-vectors are the doubletons (A, v), where A is an n × n full-
# rank matrix and v is an n-vector. As an operator on x ∈ IR n , (A, v) is the
# transformation Ax + v, which preserves aﬃne spaces. Two such operators,
# (A, v) and (B, w), are combined by composition: (A, v)((B, w)(x)) = ABx +
# Aw + v. The set of such doubletons together with composition forms a group,
# called the aﬃne group. It is denoted by AL(n).
AL <- function (Ax, v){
   if(!missing(Ax)){
      return(Ax + v)
   }
}

AL(Ax = 3.99, v = 0)

# 3.3.7 Products of the Form A T A
# Given a real matrix A, an important matrix product is A T A. (This is called a
# Gramian matrix. We will discuss this kind of matrix in more detail beginning
# on page 287.)
page(287, method = c("dput", "print"))

# Matrices of this form have several interesting properties. First, for any
# n × m matrix A, we have the fact that A T A = 0 if and only if A = 0. We see
# this by noting that if A = 0, then tr(A T A) = 0. Conversely, if tr(A T A) = 0,
# then a 2 ij = 0 for all i, j, and so a ij = 0, that is, A = 0. Summarizing, we have
if(ATA > 0){
  for (ATA in 287){
    return(ATA * 2)
  }
}

# Another useful fact about A A is that it is nonnegative deﬁnite. This is
# because for any y, y T (A T A)y = (yA) T (Ay) ≥ 0. In addition, we see that A T A
# is positive deﬁnite if and only if A is of full column rank. This follows from
# (3.124), and if A is of full column rank, Ay = 0 ⇒ y = 0.
Ay <- function (ATA){
  if (!missing(ATA)){
      return(ATA * 3.124)
  }
}

Ay(ATA = c(A +R))

# 3.3 Matrix Rank and the Inverse of a Matrix
# 91
# Now consider a generalization of the equation A T A = 0:
# A T A(B − C) = 0.
Ay(ATA = c(B +C))

# Multiplying by B T − C T and factoring (B T − C T )A T A(B − C), we have
# (AB − AC) T (AB − AC) = 0;
BT <- c(C = 1, B = 2, T = 3)
AC <- c(C = 1, B = 2, T = 3)

BT + sin(A + L)
AC + sin(A + L)

# hence, from (3.124), we have AB − AC = 0. Furthermore, if AB − AC = 0,
# then clearly A T A(B − C) = 0. We therefore conclude that
# A T AB = A T AC ⇔ AB = AC.
# (3.125)
ATA + sin(B - C)

