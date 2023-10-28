N = gets.to_i

p((N..).select do |n|
  ns = n.to_s
  p(ns[0].to_i * ns[1].to_i, ns[2].to_i)
  ns[0].to_i * ns[1].to_i == ns[2].to_i
  true
end)
