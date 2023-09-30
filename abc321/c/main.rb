K = gets.chomp.to_i

def like_321(n)
  ns = n.to_s
  return [true, n + 1] if ns.length == 1

  (0..).each do |i|
    return [true, n + 1] if ns[i + 1].nil?

    # 210 => 211 => 220 => 300
    return [false, [*ns[0...i], ns[i].to_i + 1, '0' * (ns.size - i - 1)].join.to_i] if ns[i] <= ns[i + 1]
  end
end

i = 1
k = 0
loop do
  prev_i = i
  like, i = like_321(i)
  k += 1 if like

  if k == K
    puts prev_i.to_s
    exit
  end
end
