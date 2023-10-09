N = gets.to_i
A = {}.tap do |h|
  N.times.each do |i|
    h[i + 1] = gets.to_i
    if h[i + 1] == i + 1
      puts '-1'
      exit
    end
  end
end

button = 1
count = 0

loop do
  if button == 2
    puts count
    exit
  end
  button = A.delete(button)
  if button.nil?
    puts '-1'
    exit
  end
  count += 1
end

puts '-1'
