N = gets.to_i

W = []
X = []

N.times do
  w, x = gets.split.map(&:to_i)
  W << w
  X << x
end

S = 24.times.each_with_object([]) do |h, s|
  N.times do |i|
    w = W[i]
    x = (X[i] + h) % 24
    next unless (9...18).include?(x)

    s[h] ||= 0
    s[h] += w
  end
end

puts S.compact.max
