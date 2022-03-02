require_relative '../lib/Game_of_life'

describe Game_of_life do
  it 'cell [1,2] changes from live to dead in blinker' do
    game = Game_of_life.new
    current_grid = [
      [:dead, :dead, :dead, :dead, :dead],
      [:dead, :dead, :live, :dead, :dead],
      [:dead, :dead, :live, :dead, :dead],
      [:dead, :dead, :live, :dead, :dead],
      [:dead, :dead, :dead, :dead, :dead],
    ]
    result = game.change_cell_state(1, 2, current_grid)

    expect(result).to eq(:dead)
  end
  
end

