def transpose(matrix)
  new_matrix = []
  matrix.size.times do |r|
    row = []
    matrix[1].size.times do |c|
      row << matrix[c][r]
    end
    new_matrix << row
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]