N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

l = 0
r = 0
max = 0

while r < N
  if A[r] - A[l] < M
    max = [max, r - l + 1].max
    r += 1
  else
    l += 1
  end
end

puts max
