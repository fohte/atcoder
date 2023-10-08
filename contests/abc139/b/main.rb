A, B, = gets.split.map(&:to_i)

puts(B / A + (A % B == 0 ? 0 : 1))
