require 'sinatra'
require_relative "business_logic.rb"

game = WebGame.new(["1","2","3","4","5","6","7","8","9"], "", "", 1)

get '/main_page' do
	erb :game_board, :locals => {:message => "Welcome to tic tac toe!"}

end

 post '/main_page' do

	 game.player1 = params[:selection].upcase
	 
	 if game.marker_valid?(game.player1) == true
		 game.player2 = game.p2(game.player1)
		 erb :squares_board, :locals => {:current=> game.current, :message => "Player one is #{game.player1} and Player two is #{game.player2}.", :squares => game.board} 
	
	 else	
		 erb :game_board, :locals => {:message => "Player 1, please choose a valid selection."}
	 end
 end
 
 
 
  post '/board' do
	choice = params[:choice].to_i
	player_marker = game.current_player()
	
	 if game.square_valid?(choice, game.board) == true
		game.board[choice - 1] = player_marker
			if game.board_full?(game.board) == false && game.win(game.board) == false
				game.current = game.player_changer()
				erb :squares_board, :locals => {:current => game.current, :message => "The player has chosen #{choice}.", :squares => game.board}
			elsif game.win(game.board) == true 
				erb :win, :locals => {:current => game.current, :message => "#{game.current_player} has won", :squares => game.board}
			else game.board_full?(game.board) == true
				erb :win, :locals => {:message => "It's a tie", :squares => game.board}
			end	
	 else
		 erb :squares_board, :locals => {:current => game.current, :message => "That is not a valid selection.  Please try again.", :squares => game.board}
	 end
end
	 
	post '/new_game' do
		choice = params[:selection]
		game = WebGame.new(["1","2","3","4","5","6","7","8","9"], "", "", 1)
			if choice == "y"
				redirect to('/main_page')
			else
				erb :thanks
			end
	end
 
 
	

