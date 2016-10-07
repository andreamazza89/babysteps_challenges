class Diamond

  FIRST_LETTER = 'A'

  def self.full_diamond(chars)
    return ''  if chars == 0
    return 'A' if chars == 1

    full_diamond = ''
    line_width = total_rows = (chars * 2) - 1

    total_rows.times do |row|
      index  = row_to_index(total_rows, row)
      letter = find_letter(FIRST_LETTER, index)
      full_diamond << line(line_width, index, letter) + "\n"
    end
    
    full_diamond.chomp
  end

  def self.line(width, index, symbol)
    outer_space = ' ' * (((width - 1) / 2) - index) 

    if index == 0
      return outer_space + symbol + outer_space 
    else
      inner_space = ' ' * (width - (2 * outer_space.size) - 2)
      return outer_space + symbol + inner_space + symbol +  outer_space
    end
  end

  private

  def self.row_to_index(total_rows, row)
    return total_rows - row - 1 if row > (total_rows - 1)/2
    row
  end

  def self.find_letter(start, offset)
    (start.ord + offset).chr
  end

end
