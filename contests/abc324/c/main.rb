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

  return true if s.size - start_index - end_index <= 1

  false
end

ans = []
S.each_with_index { |s, i| ans << i + 1 if ok?(s) }.sort
puts ans.size
puts ans.join(' ')
