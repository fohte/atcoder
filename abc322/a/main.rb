N = gets.chomp!.to_i
S = gets.chomp!

r = S.match(/ABC/)

puts(r.nil? ? -1 : r.begin(0) + 1)
