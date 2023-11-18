N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

C = Hash.new(0)

def find_keys(hash, value)
  hash.select { |k, v| v == value }.keys
end

M.times do |i|
  a = A[i]
  C[a] += 1
  puts find_keys(C, C.values.max).min
end
