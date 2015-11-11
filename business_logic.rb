def marker_valid?(test)
	test == "X" || test == "O"
end

def players(player1)
#passing in an x or o, returning player 2 x or o

	player2 = ""
		if   player1 == "X"
			 player2 = "O"
		else player2 = "X"
		end
		player2
end

def board_squares
  squares = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
end



  def square_valid?(choice)
	choice = params[:choice].to_i
	# squares = update_board
	
	squares = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	  choice >= 1 && choice <= 9 && squares[choice - 1] != "X" && squares[choice - 1] != "O"
  end
  
   # def update_board(choice)
   # #function to replace numbers in game board with x or o
	 # move = square_valid?(params[:choice])
	 # squares[move] = player1
	 # squares 
  
  
  
   # end

 # def current_player(players)
 # #function to switch players
	 # current_player = player1
		 # if  current_player == player1
			 # current_player == player2
		 # else
			 # current_player == player1
		 # end
	 # current_player
 # end



 


	
	


