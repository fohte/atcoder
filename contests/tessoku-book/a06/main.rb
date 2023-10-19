N, Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

S = A.each_with_object([0]) { |a, s| s << s.last + a }

Q.times do
  l, r = gets.split.map(&:to_i)
  puts S[r] - S[l - 1]
end
