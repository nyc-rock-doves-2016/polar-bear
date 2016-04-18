#potential guess index page
post '/guesses' do
  card = Card.find(params[:card_id])
  if current_user
  user = current_user
else
  user = default_user
end
  game = Game.find(params[:game_id])
  deck = card.deck
    if params[:user_input] == card.answer
    guess = Guess.create(game_id: game.id, card_id: params[:card_id], user_id: user.id, is_correct: true)
    else
    guess = Guess.create(game_id: game.id, card_id: params[:card_id], user_id: user.id, is_correct: false)
    end
    card = game.next_card
    if card
      redirect "/games/#{game.id}/cards/#{card.id}"
    else
      redirect "/games/#{game.id}/show"
      erb :'games/show'
    end
end
