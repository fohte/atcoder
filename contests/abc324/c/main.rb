N, T = gets.chomp.split
N = N.to_i
S = N.times.map { gets.chomp }

def ok?(t)
  return true if t == T

  if t.size == T.size
    t.chars.each_with_index do |c, i|
      return true if t.dup.tap { |s| s[i] = T[i] } == T
    end
  end

  if t.size == T.size + 1
    t.chars.each_with_index do |c, i|
      return true if t.dup.tap { |s| s.slice!(i) } == T
    end
  end

  if t.size == T.size - 1
    T.chars.each_with_index do |c, i|
      return true if T.dup.tap { |s| s.slice!(i) } == t
    end
  end

  false
end

ans = []
S.each_with_index { |s, i| ans << i + 1 if ok?(s) }.sort
puts ans.size
puts ans.join(' ')
