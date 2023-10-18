N = gets.to_i
A = gets.split.map(&:to_i)

ans = N.times.any? do |i|
  N.times.any? do |j|
    next if i == j

    N.times.any? do |k|
      next if i == k || j == k

      A[i] + A[j] + A[k] == 1000
    end
  end
end

puts ans ? 'Yes' : 'No'
