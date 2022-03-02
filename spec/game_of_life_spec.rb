require_relative '../lib/game_of_life'

describe Game_of_life do
  it "4 live cells in a square (2x2) existing in a 4x4 grid, remain unchanged" do
    game = Game_of_life.new
    current_grid = [
      [:dead, :dead, :dead, :dead],
      [:dead, :live, :live, :dead],
      [:dead, :live, :live, :dead],
      [:dead, :dead, :dead, :dead],
    ]

    result = game.get_next_grid(current_grid)
    expect(result).to eq(current_grid)
  end

  it '3 cells in in a line (3x1) existing in a 5x5 grid, period of 2 oscilation' do
    game = Game_of_life.new
    current_grid = [
      [:dead, :dead, :dead, :dead, :dead],
      [:dead, :dead, :live, :dead, :dead],
      [:dead, :dead, :live, :dead, :dead],
      [:dead, :dead, :live, :dead, :dead],
      [:dead, :dead, :dead, :dead, :dead],
    ]

    next_grid = [      
      [:dead, :dead, :dead, :dead, :dead],
      [:dead, :dead, :dead, :dead, :dead],
      [:dead, :live, :live, :live, :dead],
      [:dead, :dead, :dead, :dead, :dead],
      [:dead, :dead, :dead, :dead, :dead],
    ]

    result = game.get_next_grid(current_grid)
    expect(result).to eq(next_grid)
  end
end
