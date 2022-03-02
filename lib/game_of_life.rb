class Game_of_life
  def get_next_grid(current_grid)
    return current_grid
  end

  def change_cell_state(row_number, col_number, current_grid)
    current_state = current_grid[row_number][col_number]
    number_of_live_neighbours = 0
    number_of_live_neighbours += 1 if current_grid[row_number-1][col_number-1] == :live
    number_of_live_neighbours += 1 if current_grid[row_number-1][col_number] == :live
    number_of_live_neighbours += 1 if current_grid[row_number-1][col_number+1] == :live
    number_of_live_neighbours += 1 if current_grid[row_number][col_number-1] == :live
    number_of_live_neighbours += 1 if current_grid[row_number][col_number+1] == :live
    number_of_live_neighbours += 1 if current_grid[row_number+1][col_number-1] == :live
    number_of_live_neighbours += 1 if current_grid[row_number+1][col_number] == :live
    number_of_live_neighbours += 1 if current_grid[row_number+1][col_number+1] == :live
    
    if current_state == :live && (number_of_live_neighbours > 3 || number_of_live_neighbours < 2)
      current_grid[row_number][col_number] = :dead
      current_state = current_grid[row_number][col_number]
    end

    if current_state == :dead && number_of_live_neighbours == 3
      current_grid[row_number][col_number] = :live
      current_state = current_grid[row_number][col_number]
    end

    current_state
  end
end


