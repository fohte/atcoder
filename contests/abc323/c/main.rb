N, M, = gets.split.map(&:to_i)
As = gets.chomp!.split.map(&:to_i)
Ss = N.times.map { gets.chomp! }

scores = Ss.map.with_index do |s, i|
  s.chars.map.with_index { |v, j| [v == 'o' ? As[j] + i + 1 : 0, j] }
end

SORTED_SS = scores.map.with_index.sort_by { |s, _| s }.reverse

def calc(me, other, i)
  other_score = other.map { |v, _| v }.sum
  count = 0
  new_score = me.map { |v, _| v }.sum

  SORTED_SS.each do |_s, j|
    next if me[j][0] != 0

    return count if other_score < new_score

    new_score += As[j] + i + 1
    count += 1
  end

  count
end

N.times do |i|
  me = scores[i]
  others = scores.dup.tap { |s| s.delete_at(i) }

  count = others.map { |other| calc(me, other, i) }.max
  puts count
end
