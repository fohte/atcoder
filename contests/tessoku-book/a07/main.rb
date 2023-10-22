D = gets.to_i
N = gets.to_i

SD = Array.new(D + 1, 0)
N.times.each do |i|
  l, r = gets.split.map(&:to_i)
  SD[l - 1] += 1
  SD[r] -= 1
end

S = SD.each_with_object([]) do |x, a|
  a << (a.last || 0) + x
end

puts S[0...D]
