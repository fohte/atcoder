N, M = gets.split.map(&:to_i)
S = gets.chomp
T = gets.chomp

# abcabc => abc
def uniq_repeated_str(str)
  str.gsub(/^(.+?)\1+$/, '\1')
end

new_ss = S.gsub(T, ',').split(',').map { |s| uniq_repeated_str(s) }

puts(new_ss.all? { |s| s.size <= M } ? 'Yes' : 'No')
