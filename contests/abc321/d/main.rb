N, M, P, = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)

r = 0
As.each do |a|
  Bs.each do |b|
    r += [a + b, P].min
  end
end

puts r
