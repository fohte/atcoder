N = gets.to_i

ABCD = Array.new(N) { gets.split.map(&:to_i) }

H = ABCD.flat_map { |a, b, c, d| [b, d] }.max
W = ABCD.flat_map { |a, b, c, d| [a, c] }.max

T = Array.new(H + 1) { Array.new(W + 1, 0) }
S = Array.new(H + 1) { Array.new(W + 1, 0) }

ABCD.each do |a, b, c, d|
  T[a][b] += 1
  T[a][d] -= 1
  T[c][b] -= 1
  T[c][d] += 1
end

(1..H).each do |y|
  (1..W).each do |x|
    S[y][x] = S[y][x - 1] + T[y][x]
  end
end

(1..W).each do |x|
  (1..H).each do |y|
    S[y][x] += S[y - 1][x]
  end
end

puts S.sum { |row| row.count { |v| v > 0 } }
