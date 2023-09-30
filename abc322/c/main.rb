N, M, = gets.chomp!.split(' ').map(&:to_i)
As = gets.chomp!.split(' ').map(&:to_i)

(1..N).each do |i|
  a_i = As.find_index { |a| a >= i }
  puts(As[a_i] - i)
  As.shift(a_i)
end
