D = gets.to_i
N = gets.to_i

SD = Array.new(D, 0)
N.times.each do |i|
  l, r = gets.split.map(&:to_i)
  SD[l - 1] += 1
  SD[r] -= 1
end

S = SD.each_with_object([0]) do |x, a|
  a << a.last + x
end

puts S[1..]
