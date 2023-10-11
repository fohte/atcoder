S = gets.chomp!

i = 0
count = 0

while i < S.length
  left = S[i]
  right = S[i + 1]

  break if right.nil?

  if left == 'B' && right == 'W'
    S[i] = 'W'
    S[i + 1] = 'B'
    i = 0
    count += 1
  else
    i += 1
  end
end

puts count
