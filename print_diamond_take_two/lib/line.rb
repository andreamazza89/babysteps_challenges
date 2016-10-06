class Line
  def self.evalutate_line(total_rows, index, character)
    return EMPTY_STRING if total_rows == 0
    return character if total_rows == 1
    return  outer_space(total_rows, index) + character + outer_space(total_rows, index) if index == 1
    return character + inner_space(total_rows, index)  + character if total_rows == index
    return outer_space(total_rows, index) + character + inner_space(total_rows, index) + character + outer_space(total_rows, index)
  end

private

  def self.inner_space(total_rows, index)
    SPACE * (line_length(total_rows) - 2 - (total_rows - index))
  end

  def self.line_length(total_rows)
    total_rows + total_rows - 1
  end

  def self.outer_space(total_rows, index)
    SPACE * ((line_length(total_rows) - inner_space(total_rows, index).size) / 2)
  end

  EMPTY_STRING = ""
  SPACE = " "
end
