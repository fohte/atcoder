N, M, P, = gets.split.map(&:to_i)
As = gets.split.map(&:to_i).delete_if { |a| a > P }
Bs = gets.split.map(&:to_i).delete_if { |b| b > P }

r = 0
As.each do |a|
  Bs.each do |b|
    r += [a + b, P].min
  end
end

puts r
