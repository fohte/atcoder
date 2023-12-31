H, W = gets.split.map(&:to_i)

X = H.times.map { gets.split.map(&:to_i) }
S = Array.new(H + 1) { Array.new(W + 1, 0) }

(1..H).each do |y|
  (1..W).each do |x|
    S[y][x] = S[y][x - 1] + X[y - 1][x - 1]
  end
end

(1..W).each do |x|
  (1..H).each do |y|
    S[y][x] += S[y - 1][x]
  end
end

Q = gets.to_i

Q.times do
  a, b, c, d = gets.split.map(&:to_i)
  puts S[c][d] + S[a - 1][b - 1] - S[a - 1][d] - S[c][b - 1]
end
