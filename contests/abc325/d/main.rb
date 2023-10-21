N = gets.to_i
TD = N.times.map { gets.split.map(&:to_i) }

max_t = TD.map { |t, d| t + d }.max
S = Array.new(max_t + 1, 0)

TD.each do |t, d|
  (t..(t + d)).each do |i|
    S[i] += 1
  end
end

p S
