N = gets.to_i

XY = N.times.map { gets.split.map(&:to_i) }
x_max = XY.max_by { |x, _| x }[0]
y_max = XY.max_by { |_, y| y }[1]

MAP = Array.new(x_max) { Array.new(y_max, 0) }
XY.each { |x, y| MAP[x - 1][y - 1] = 1 }

S = Array.new(x_max + 1) { Array.new(y_max + 1, 0) }

(1..y_max).each do |y|
  (1..x_max).each do |x|
    S[x][y] = S[x - 1][y] + MAP[x - 1][y - 1]
  end
end

(1..x_max).each do |x|
  (1..y_max).each do |y|
    S[x][y] += S[x][y - 1]
  end
end

Q = gets.to_i
Q.times do
  a, b, c, d = gets.split.map(&:to_i)
  puts S[c][d] - S[a - 1][d] - S[c][b - 1] + S[a - 1][b - 1]
end
