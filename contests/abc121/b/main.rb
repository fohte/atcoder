N, M, C = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
A = N.times.map { gets.chomp.split.map(&:to_i) }

count = 0
N.times do |i|
  count += 1 if M.times.map { |j| A[i][j] * B[j] }.sum + C > 0
end

puts count
