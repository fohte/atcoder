S = gets.chomp!

count = 0
b_count = 0
i = 0

while i < S.length
  if S[i] == 'B'
    b_count += 1
  else
    count += b_count
  end
  i += 1
end

puts(count)
