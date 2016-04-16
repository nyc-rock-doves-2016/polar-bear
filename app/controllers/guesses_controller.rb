#potential guess index page

get '/guesses' do

end

post '/guesses' do
  @card = Card.find(params[:card_id])
  @user = User.find(current_user.id)
  @game = Game.find(params[:game_id])
  @deck = Deck.find(params[:deck_id])
  guess = Guess.new(game_id: @game.id, card_id: params[:card_id], user_id: @user.id)
  if params[:user_input] == @card.answer
    guess.is_correct = true
     guess.save
      next_card = @game.next_card
       redirect "decks/#{@deck.id}/games/new"
    # else
    #    redirect "decks/#{@deck.id}/games/new"
      # binding.pry
    # end
  end
end
