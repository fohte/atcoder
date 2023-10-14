N, T = gets.chomp.split
N = N.to_i
S = N.times.map { gets.chomp }

def ok?(s)
  src = s.dup
  return true if s == T

  return false unless s.size == T.size || s.size == T.size + 1 || s.size == T.size - 1

  td = T.dup
  td.size.times do |i|
    break unless s[0] == td[0]

    s.slice!(0)
    td.slice!(0)
  end
  td.size.times do |i|
    break unless s[-1] == td[-1]

    s.slice!(-1)
    td.slice!(-1)
  end

  return true if (td.size == 1 && s.size == 0) || (td.size == 0 && s.size == 1) || (td.size == 1 && s.size == 1)

  false
end

ans = []
S.each_with_index { |s, i| ans << i + 1 if ok?(s) }.sort
puts ans.size
puts ans.join(' ')
