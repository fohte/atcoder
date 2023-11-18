N, M = gets.split.map(&:to_i)
S = gets.chomp
T = gets.chomp

new_ss = S.gsub(T, ',').split(',')

puts(new_ss.all? { |s| s.size <= M } ? 'Yes' : 'No')
