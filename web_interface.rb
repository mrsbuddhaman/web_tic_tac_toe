require 'sinatra'
require_relative "business_logic.rb"


get '/main_page' do
	erb :game_board, :locals => {:message => "Welcome to tic tac toe!"}

end

 post '/main_page' do

	 player1 = params[:selection].upcase
	 if marker_valid?(player1) == true
		 player2 = players(player1)
		 erb :squares_board, :locals => {:message => "Player one is #{player1} and Player two is #{player2}.", :squares => board_squares} 
	
	 else	
		 erb :game_board, :locals => {:message => "Player 1, please choose a valid selection."}
	 end
 end
 
 
 
  post '/board' do
	choice = params[:choice].to_i
	 
	 if square_valid?(choice) == true
	 updated_board = ["X"]
		 erb :squares_board, :locals => {:message => "The player has chosen #{choice}.", :squares => updated_board}
	 else
		 erb :squares_board, :locals => {:message => "That is not a valid selection.  Please try again.", :squares => board_squares}
	 end
	 
 
 
 
 
 end
	
# get '/squares' do
	 # choice = params[ :square].to_i
		 # if square_valid?(choice)== true
		 # board_squares[choice - 1] = current player			
		 # end
	 # erb :squares_board
 # end
