#!/usr/bin/r

# 3.3.11 Inverses of Matrices with Special Forms
# Matrices with various special patterns may have relatively simple inverses.
# For example, the inverse of a diagonal matrix with nonzero entries is a diag-
# onal matrix consisting of the reciprocals of those elements. Likewise, a block
# diagonal matrix consisting of full-rank submatrices along the diagonal has an
# inverse that is merely the block diagonal matrix consisting of the inverses of
# the submatrices. We discuss inverses of various special matrices in Chapter 8.
checkTwoLevelFactors(n = 1)
character(length = 80)

form <- y ~ a + b + c
as.character(form)  ## length 3
deparse(form)       ## like the input

a0 <- 11/999          # has a repeating decimal representation
(a1 <- as.character(a0))
format(a0, digits = 16) # shows one more digit
a2 <- as.numeric(a1)
a2 - a0               # normally around -1e-17
as.character(a2)      # normally different from a1
print(c(a0, a2), digits = 16)