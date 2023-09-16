M = gets.chomp!.to_i
s1 = gets.chomp!
s2 = gets.chomp!
s3 = gets.chomp!
ss = [s1, s2, s3]

def reel(_s, t)
  (t % M) + 1
end

rs = [nil, nil, nil]

[0..].each do |t|
  ss.each_with_index do |s, i|
    r = reel(s, t)
    unless rs.each_with_index.any? { |x, j| i != j && x == r }
      rs = []
      break
    end

    rs << r
  end
end
