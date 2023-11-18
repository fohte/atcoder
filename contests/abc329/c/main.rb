N = gets.to_i
S = gets.chomp

substr = []

prev_c = nil
S.chars.each do |c|
  substr << if c == prev_c
              substr.last + c
            else
              c
            end

  prev_c = c
end

p substr.uniq.size
