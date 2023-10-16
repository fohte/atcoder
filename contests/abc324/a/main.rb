N = gets.to_i
A = gets.split.map(&:to_i)

puts(A.uniq.count == 1 ? 'Yes' : 'No')
