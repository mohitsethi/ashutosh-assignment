#!/usr/bin/python

'''Print absolute difference between the two sums of matrix's diagonals.
   Matrix rows = 3
   Square matrix is stored in array'''

n = 3
a = [[11,2,4],[4,5,6],[10,8,-12]]
first_diagonal = sum(a[i][i] for i in range(n))
second_diagonal = sum(a[i][n-i-1] for i in range(n))
diff = first_diagonal - second_diagonal
print "Sum of absolute diagonal is:  %d" % abs(diff)

