def display_board(board)

    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)

  index.to_i - 1

end


def valid_move?(board, index)

  if index.between?(0,8) == true && board[index] == " "
    return true
  else
    return false
  end
end

def move(board, index, move = "X")

  index.to_i -= 1

  if valid_move? == true
    board[index] = move
  end
end
