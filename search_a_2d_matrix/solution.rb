# Write an efficient algorithm that searches for a value in an m x n matrix.
# This matrix has the following properties:
#
# Integers in each row are sorted from left to right.
# The first integer of each row is greater than the last integer of the previous
# row.
# For example,
#
# Consider the following matrix:
#
# [
#   [1,   3,  5,  7],
#   [10, 11, 16, 20],
#   [23, 30, 34, 50]
# ]
# Given target = 3, return true.

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  row_left = 0
  row_right = matrix.length - 1
  while row_left <= row_right
    row_mid = row_left + (row_right - row_left) / 2
    row = matrix[row_mid]
    if target >= row[0] && target <= row[-1]
      left = 0
      right = row.length - 1
      while left <= right
        mid = left + (right - left) / 2
        if target == row[mid]
          return true
        elsif target < row[mid]
          right = mid - 1
        else
          left = mid + 1
        end
      end
      return false
    elsif target < row[0]
      row_right = row_mid - 1
    else
      row_left = row_mid + 1
    end
  end
  false
end

p search_matrix([[1]], 2)
p search_matrix([[1,3]], 2)
