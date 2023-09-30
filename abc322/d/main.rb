require 'matrix'

def get_mino_row
  gets.chomp!.chars.map { |c| c == '#' ? 1 : 0 }
end

def get_mino
  mino = [get_mino_row, get_mino_row, get_mino_row]
  mino.delete_if { |row| row.all?(&:zero?) }
  Matrix[mino.transpose.delete_if { |row| row.all?(&:zero?) }.transpose]
end

def dump_mino(mino)
  mino.row_vectors.each do |row|
    row.each do |cell|
      print(cell == 1 ? '#' : '.')
    end
    puts
  end
end

minos = [get_mino, get_mino, get_mino]

def all_padded_mino(_mino)
  grid = Matrix.build(4, 4) { 0 }
  # WIP
end

minos.each do |mino|
  grid = Matrix.build(4, 4) { 0 }
  4.times do |i|
    4.times do |j|
      next unless i + mino.row_count <= 4 && j + mino.column_count <= 4

      next if (grid + mino).any? { |cell| cell > 1 }

      grid += mino
    end
  end
  dump_mino(grid)
end
