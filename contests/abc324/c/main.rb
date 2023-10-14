N, T = gets.chomp.split
N = N.to_i
S = N.times.map { gets.chomp }

def ok?(t)
  return true if t == T

  (T.size + 1).times do |i|
    return true if t.size == T.size && i < t.size && t.dup.tap { |s| s[i] = T[i] } == T

    return true if t.size == T.size + 1 && i < t.size && (t.dup.tap { |s| s.slice!(i) } == T)

    return true if t.size == T.size - 1 && i < T.size && (T.dup.tap { |s| s.slice!(i) } == t)
  end
  false
end

ans = []
S.each_with_index { |s, i| ans << i + 1 if ok?(s) }.sort
puts ans.size
puts ans.join(' ')
