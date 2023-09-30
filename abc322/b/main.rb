N, M, = gets.chomp!.split(' ').map(&:to_i)
S = gets.chomp!
T = gets.chomp!

def calc
  return 0 if T == S

  starts = T.start_with?(S)
  ends = T.end_with?(S)

  if starts && !ends
    1
  elsif !starts && ends
    2
  else
    3
  end
end

puts calc
