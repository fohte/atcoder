H, W = gets.split.map(&:to_i)

S = H.times.map { gets.chomp.chars }
Checked = Array.new(H) { Array.new(W, false) }
count = 0

def check(y, x)
  return if x < 0 || x >= W || y < 0 || y >= H
  return if S[y][x] == '.'

  Checked[y][x] = true
end

def dump
  puts '--'
  Checked.each do |row|
    puts row.map { |c| c ? 'o' : 'x' }.join
  end
  puts '--'
end

def check_connections(y, x)
  return if x < 0 || x >= W || y < 0 || y >= H || Checked[y][x]

  cell = S[y][x]
  return if cell == '.'

  Checked[y][x] = true

  check_connections(y, x + 1) # right
  check_connections(y + 1, x) # down
  check_connections(y + 1, x + 1) # down right
  check_connections(y + 1, x - 1) # down left
  check_connections(y - 1, x) # up
  check_connections(y - 1, x + 1) # up right
  check_connections(y - 1, x - 1) # up left
  check_connections(y, x - 1) # left
end

H.times do |y|
  W.times do |x|
    checked = Checked[y][x]
    # print "#{y}, #{x} "
    # dump
    next if checked

    next if S[y][x] == '.'

    count += 1
    check_connections(y, x)
    Checked[y][x] = true
  end
end

puts count
