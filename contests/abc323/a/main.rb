S = gets.chomp!

if [2, 4, 6, 8, 10, 12, 14, 16].any? { |i| S[i - 1] != '0' }
  puts 'No'
else
  puts 'Yes'
end
