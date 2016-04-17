#potential guess index page

get '/guesses' do

end

post '/guesses' do
  card = Card.find(params[:card_id])
  user = current_user
  game = Game.find(params[:game_id])
  deck = card.deck
    if params[:user_input] == card.answer
    guess = Guess.create(game_id: game.id, card_id: params[:card_id], user_id: user.id, is_correct: true)
  else
    guess = Guess.create(game_id: game.id, card_id: params[:card_id], user_id: user.id, is_correct: false)
  end
   card = game.next_card
  redirect "/games/#{game.id}/cards/#{card.id}"
      # redirect "/games/#{@game.id}/cards/#{@card.id}"
      # redirect "/decks/#{@deck.id}/cards/#{@card.id}"
end
