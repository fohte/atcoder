N = gets.to_i
A = gets.split.map(&:to_i)
Q = gets.to_i

S = A.each_with_object([[0, 0]]) { |a, s| s << s.last.dup.tap { |l| l[a] += 1 } }

Q.times do
  l, r = gets.split.map(&:to_i)
  sl_lose, sl_win = S[l - 1]
  sr_lose, sr_win = S[r]
  ans = (sr_win - sl_win) - (sr_lose - sl_lose)
  if ans > 0
    puts 'win'
  elsif ans < 0
    puts 'lose'
  else
    puts 'draw'
  end
end
