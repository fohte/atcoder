K = gets.chomp.to_i

def like_321?(n)
  return true if n.length == 1

  (0..).each do |i|
    return true if n[i + 1].nil?
    return false if n[i] <= n[i + 1]
  end
end

k = 0
(1..).each do |i|
  k += 1 if like_321?(i.to_s)
  if k == K
    puts i.to_s
    exit
  end
end
