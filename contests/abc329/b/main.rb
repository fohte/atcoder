N = gets.to_i
A = gets.split.map(&:to_i)

puts A.sort.reverse.uniq[1]
