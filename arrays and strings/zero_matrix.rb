# frozen_string_literal: true

def zero_matrix(matrix)
  i = 0
  n = matrix.size
  m = matrix[0].size

  rows = []
  colums = []

  while i < n
    j = 0
    while j < m
      if matrix[i][j].zero?
        rows << i
        colums << j
      end
      j += 1
    end
    i += 1
  end

  rows.each do |row|
    i = 0
    while i < m
      matrix[row][i] = 0
      i += 1
    end
  end

  colums.each do |colum|
    i = 0
    while i < n
      matrix[i][colum] = 0
      i += 1
    end
  end
  matrix
end

# rows  exmaple [[1,2,3], [4,5,6] [7,8,9]]

p zero_matrix([[1, 5, 4], [2, 0, 8], [9, 5, 6]])
