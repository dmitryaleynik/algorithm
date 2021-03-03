# frozen_string_literal: true

def rotate_matrix(matrix)
  j = 0
  result = []

  while j < matrix.size
    i = matrix.size - 1
    result_rows = []

    while i >= 0
      result_rows << matrix[i][j]
      i -= 1
    end

    result << result_rows
    j += 1
  end

  result
end

# rows  exmaple [[1,2,3], [4,5,6] [7,8,9]]


p rotate_matrix([[1, 5, 4], [2, 3, 8], [9, 5, 6]])


