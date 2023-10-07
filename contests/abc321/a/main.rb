N = gets.chomp

def f
  return true if N.length == 1

  (0..).each do |i|
    return true if N[i + 1].nil?
    return false if N[i] <= N[i + 1]
  end
end

puts(f ? 'Yes' : 'No')
