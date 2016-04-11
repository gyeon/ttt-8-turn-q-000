def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && !position_taken?(board,position)
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  if board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    return true
      elsif board[position.to_i-1] == " " || ""
    return false
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def move (board, position, value)
 board[position.to_i - 1] = value
end

def turn(board)
#   ask for input
  puts "Please enter 1-9:"
#   get input
  input = gets.chomp
#   if input is valid, make move
  if valid_move?(board, input)
    move(board, input, "X")
#     else, ask for input again, until you get valid response
    else
    input = ""
    while not valid?(input) do
      input = gets.chomp
    end
  end
end
#   if input is valid, make move for input
#   else ask for input again until you get a valid input

# show the board



#   validates user response
#   asks for input again
#   make a valid move
#   display correct board after valid turn

#   evaluation ? do something : do something else
