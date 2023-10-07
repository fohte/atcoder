N, X, = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

def result(as)
  as.sum - (as.min + as.max)
end

101.times do |i|
  if result((As + [i])) >= X
    puts i.to_s
    exit
  end
end
puts '-1'
