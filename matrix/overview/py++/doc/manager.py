#!/usr/bin/python

# where any pair of sub in a column or row may be null (that is, where
# for example, it may be the case that A = [A 11 |A 12 ]). Then the number of
# linearly independent rows of A must be at least as great as the number of
# linearly independent rows of [A 11 |A 12 ] and the number of linearly independent
# rows of [A 21 |A 22 ]. By the properties in Section 2.1.1, the number
# of linearly independent rows of [A 11 |A 12 ] must be at least as great as the
# number of linearly independent rows of A 11 or A 21 . We could go through a
# similar argument relating to the number of linearly independent columns and
# arrive at the inequality

def A11(self, cols, rows):
    if cols is None:
       return cols
    else:
       yield cols
    if rows is None:
       return rows
    else:
       yield cols

def A12(self, cols, rows):
    if cols is None:
       return cols
    else:
       yield cols
    if rows is None:
       return rows
    else:
       yield cols

def A21(self, cols, rows):
    if cols is None:
       return cols
    else:
       yield cols
    if rows is None:
       return rows
    else:
       yield cols

def A22(self, cols, rows):
    if cols is None:
       return cols
    else:
       yield cols
    if rows is None:
       return rows
    else:
       yield cols