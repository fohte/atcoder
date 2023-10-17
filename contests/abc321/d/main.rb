N, M, P, = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i).sort

b_prefix_sum = (0...M).each_with_object([0]) do |i, acc|
  acc << ((acc.last || 0) + Bs[i])
end
r = 0
As.each do |a|
  n = Bs.bsearch_index { |b| b >= P - a }

  r += a * n + b_prefix_sum[n] + P * (M - n)
end

puts r
