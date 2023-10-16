N, T = gets.chomp.split
N = N.to_i
S = N.times.map { gets.chomp }

def ok?(s)
  return true if s == T

  start_index = 0
  T.size.times do
    break unless s[start_index] == T[start_index]

    start_index += 1
  end

  end_index = 0
  T.size.times do
    break unless s[start_index..][-(end_index + 1)] == T[start_index..][-(end_index + 1)]

    end_index += 1
  end

  return true if start_index == s.size && s.size == T.size
  return true if start_index + end_index >= s.size && s.size + 1 == T.size
  return true if start_index + end_index >= s.size - 1 && s.size - 1 == T.size
  return true if start_index + end_index == s.size - 1 && s.size == T.size

  false
end

ans = []
S.each_with_index { |s, i| ans << i + 1 if ok?(s) }.sort
puts ans.size
puts ans.join(' ')
