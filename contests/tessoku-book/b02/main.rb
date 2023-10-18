puts(gets.split.map(&:to_i).any? { |x| 100 % x == 0 } ? 'Yes' : 'No')
