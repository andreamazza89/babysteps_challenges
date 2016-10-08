class Diamond

  FIRST_LETTER = 'A'

  def initialize(total_characters)
    @line_width = @total_rows = calculate_total_rows(total_characters)
  end

  def full_diamond
    full_diamond = ''

    total_rows.times do |row|
      offset = character_offset_from_centre_of_line(total_rows, row)
      letter = find_letter(FIRST_LETTER, offset)
      full_diamond << compose_line(line_width, offset, letter) + "\n"
    end
    
    full_diamond.chomp
  end

  private

  def compose_line(width, offset_from_centre, character)
    outer_space = ' ' * (((width - 1) / 2) - offset_from_centre) 

    if offset_from_centre == 0
      return outer_space + character + outer_space 
    else
      inner_space = ' ' * (width - (2 * outer_space.size) - 2)
      return outer_space + character + inner_space + character +  outer_space
    end
  end

  attr_reader :line_width, :total_rows

  def calculate_total_rows(total_characters)
    (total_characters * 2) - 1
  end

  def character_offset_from_centre_of_line(total_rows, row)
    return total_rows - row - 1 if row > (total_rows - 1)/2
    row
  end

  def find_letter(start, offset)
    (start.ord + offset).chr
  end

end
