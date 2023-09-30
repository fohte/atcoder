s = gets.chomp!

src = s.dup

def f(s, src)
  (s.length - 1).times do |i|
    (i + 1).times do |j|
      return s.length if s == s.reverse

      s = src[j, src.length - i]
    end
  end

  1
end

puts f(s, src)
