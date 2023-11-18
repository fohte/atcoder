N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

C = Hash.new(0)

max = 0
top = nil

M.times do |i|
  a = A[i]
  C[a] += 1

  if C[a] > max
    max = C[a]
    top = a
  elsif C[a] == max
    top = [top, a].min
  end

  puts top
end
