class WebGame
	attr_accessor :board, :player1, :player2, :current
	
	def initialize(board, player1, player2, current)
		@board = board
		@player1 = player1
		@player2 = player2
		@current = current
	end

def marker_valid?(test)
	test == "X" || test == "O"
end

def p2(player1)
#passing in an x or o, returning player 2 x or o

		if   player1 == "X"
			 player2 = "O"
		else player2 = "X"
		end
end

  def square_valid?(choice, squares)
  #checking to make sure that chosen square is a valid one
	  choice >= 1 && choice <= 9 && squares[choice - 1] != "X" && squares[choice - 1] != "O"
  end
  
  def current_player
  #sets the current player
		if current == 1
			player1
		else
			player2
		end
  end
  
  def player_changer
  #function to switch players
		if current == 1
		   current = 2
		else
		   current = 1
		end
  end
  
  def board_full?(squares)
  #defines whether board is full
      board = squares.join(",")
		if board =~ (/\d/)
			false
		else
			true
		end
  end
  
  def win(board)
  #defines a win
	if board[0] == "X" && board[1] == "X" && board[2] == "X" ||
	   board[3] == "X" && board[4] == "X" && board[5] == "X" ||
	   board[6] == "X" && board[7] == "X" && board[8] == "X" ||
	   board[0] == "X" && board[3] == "X" && board[6] == "X" ||
	   board[1] == "X" && board[4] == "X" && board[7] == "X" ||
	   board[2] == "X" && board[5] == "X" && board[8] == "X" ||
	   board[0] == "X" && board[4] == "X" && board[8] == "X" ||
	   board[2] == "X" && board[4] == "X" && board[6] == "X" ||
	   board[0] == "O" && board[1] == "O" && board[2] == "O" ||
	   board[3] == "O" && board[4] == "O" && board[5] == "O" ||
	   board[6] == "O" && board[7] == "O" && board[8] == "O" ||
	   board[0] == "O" && board[3] == "O" && board[6] == "O" ||
	   board[1] == "O" && board[4] == "O" && board[7] == "O" ||
	   board[2] == "O" && board[5] == "O" && board[8] == "O" ||
	   board[0] == "O" && board[4] == "O" && board[8] == "O" ||
	   board[2] == "O" && board[4] == "O" && board[6] == "O"
	true
	else false
	end
  end
		



 


	
	


end