N = gets.to_i
Xs = gets.split.map(&:to_i)

p (1..100).map { |p| Xs.map { |x| (x - p)**2 }.sum }.min
