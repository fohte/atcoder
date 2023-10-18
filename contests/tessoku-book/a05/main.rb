N, K = gets.split.map(&:to_i)
puts(N.times.map do |i|
  N.times.count do |j|
    k = K - (i + 1) - (j + 1)
    0 < k && k <= N
  end
end.sum)
