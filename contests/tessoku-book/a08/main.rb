H, W = gets.split.map(&:to_i)

X = H.times.map { gets.split.map(&:to_i) }
S = Array.new(H + 1) { Array.new(W + 1, 0) }

H.times do |y|
  W.times do |x|
    S[y + 1][x + 1] = S[y + 1][x] + X[y][x]
  end
end

W.times do |x|
  H.times do |y|
    S[y + 1][x + 1] += S[y][x + 1]
  end
end

Q = gets.to_i

Q.times do
  a, b, c, d = gets.split.map(&:to_i)
  puts S[d][c] - S[b][a]
end
