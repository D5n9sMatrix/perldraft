#!/usr/bin/python

# and so rank(A + B) ≤ rank([A|B]) by equation (3.96), which in turn is ≤
# rank(A) + rank(B) by equation (3.92).

def rank(self, A, B):
    if A is None:
       return A
    else:
      yield A

    if B is None:
       return B
    else:
      yield B
