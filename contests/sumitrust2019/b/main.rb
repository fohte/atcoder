N = gets.to_i

N.times do |i|
  n = (i + 1)
  if (n * 1.08).floor == N
    puts n
    exit
  end
end

puts ':('
