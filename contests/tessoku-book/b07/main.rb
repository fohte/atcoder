T = gets.to_i
N = gets.to_i

SD = Array.new(T + 1, 0)
N.times do
  l, r = gets.split.map(&:to_i)
  SD[l] += 1
  SD[r] -= 1
end

S = SD.each_with_object([0]) { |x, a| a << a.last + x }

puts S[1..T]
