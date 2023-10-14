N = gets.to_i

n = N
x = 0
y = 0

while n.even?
  n /= 2
  x += 1
end

while  n % 3 == 0
  n /= 3
  y += 1
end

puts(n == 1 ? 'Yes' : 'No')
