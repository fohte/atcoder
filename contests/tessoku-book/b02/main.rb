A, B = gets.split.map(&:to_i)
puts((A..B).any? { |x| 100 % x < 1 } ? 'Yes' : 'No')
