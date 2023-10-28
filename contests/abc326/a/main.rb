X, Y = gets.split.map(&:to_i)
if (Y - X > 0 && Y - X <= 2) || (X - Y > 0 && X - Y <= 3)
  puts 'Yes'
else
  puts 'No'
end
