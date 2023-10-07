N, M, = gets.split.map(&:to_i)
As = gets.chomp!.split.map(&:to_i)
Ss = N.times.map { gets.chomp! }

scores = Ss.map.with_index do |s, _i|
  s.chars.map.with_index { |v, j| v == 'o' ? As[j] : 0 }
end

SORTED_AS = As.map.with_index.sort_by { |a, _| a }.reverse

def calc(me, other, me_bonus, other_bonus)
  other_score = other.sum + other_bonus + 1
  count = 0
  new_score = me.sum + me_bonus + 1

  return 0 if other_score < new_score

  SORTED_AS.each do |_s, j|
    next if me[j] != 0

    return count if other_score < new_score

    new_score += As[j]
    count += 1
  end

  count
end

N.times do |i|
  me = scores[i]
  others = scores.dup.tap { |s| s.delete_at(i) }

  count = others.map.with_index { |other, j| calc(me, other, i, j) }.max
  puts count
end
