N, Q = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

S = Array.new(N) { |i| Set.new([C[i]]) }

Q.times do
  a, b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  S[b].merge(S[a])
  S[a] = Set.new
  p S[b].size
end
