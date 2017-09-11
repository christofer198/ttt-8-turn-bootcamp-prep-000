def display_board(board)

    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)

  inpu = index.to_i - 1
  inpu

end


def valid_move?(board, index)

  if index.between?(0,8) == true && board[index] == " "
    return true
  else
    return false
  end
end

def move(board, index, move = "X")

    board[index] = move
end

def turn(board)

  puts "Please enter 1-9:"

  input = gets.chomp

  input_to_index(input)

  if valid_move?(board, input) == true
    return true
  end

end
