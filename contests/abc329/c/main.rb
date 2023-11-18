N = gets.to_i
S = gets.chomp

substr = {}

current_count = 0
prev_c = nil
(N + 1).times do |i|
  c = S[i]
  if !c.nil? && c == prev_c
    current_count += 1
  else
    substr[prev_c] = current_count if !prev_c.nil? && (substr[prev_c].nil? || substr[prev_c] < current_count)
    current_count = 1
  end

  prev_c = c
end

p substr.values.sum
