#potential guess index page
post '/guesses' do
  #ZM: Okay a few things here...
  #1. there is to much in this single route
  #2. your indentation is not correct
  #3. you are doing the same create method twice
  #4. the current_user method should return the default user if no current user exsists
  
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
