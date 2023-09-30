N, M, = gets.chomp!.split(' ').map(&:to_i)
As = gets.chomp!.split(' ').map(&:to_i)

(1..N).each do |i|
  b = As.find { |a| a >= i }
  puts(b - i)
end
