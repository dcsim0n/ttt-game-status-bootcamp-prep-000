require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
def get_board_combo(board, combo)
  combo.map{|x| board[x]}
end
def won?(board)
  wins = WIN_COMBINATIONS.detect do |win_combo|
    board_combo = get_board_combo[board, win_combo]
    board_combo == ['X','X','X'] || ['O','O','O']
  end
  
end