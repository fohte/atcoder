N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts(A.include?(X) ? 'Yes' : 'No')
