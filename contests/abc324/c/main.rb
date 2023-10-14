N, T = gets.chomp.split
N = N.to_i
S = N.times.map { gets.chomp }

def ok?(s)
  return true if s == T

  return false unless s.size == T.size || s.size == T.size + 1 || s.size == T.size - 1

  td = T.dup
  td.size.times do |i|
    if s[i] == td[i]
      s.slice!(i)
      td.slice!(i)
    end
  end

  (td.size + 1).times do |i|
    return true if s.size == td.size && i < s.size && s.dup.tap { |s| s[i] = td[i] } == td

    return true if s.size == td.size + 1 && i < s.size && (s.dup.tap { |s| s.slice!(i) } == td)

    return true if s.size == td.size - 1 && i < td.size && (td.dup.tap { |s| s.slice!(i) } == s)
  end
  false
end

ans = []
S.each_with_index { |s, i| ans << i + 1 if ok?(s) }.sort
puts ans.size
puts ans.join(' ')
