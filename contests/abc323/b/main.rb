N = gets.chomp!.to_i
Ss = N.times.map { gets.chomp! }

rs = Ss.map { |s| s.count('o') }

s = rs.map.with_index.sort_by { |r, _i| -r }.map { |_, i| i + 1 }
puts s.join(' ')
