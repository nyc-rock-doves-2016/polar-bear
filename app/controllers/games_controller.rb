# potential game show page
get '/games/:game_id/show' do
  @game = Game.find_by(id: params[:game_id])
  @deck = @game.deck

  erb :'games/show'
end

get '/games/:game_id/cards/:id' do
@game = Game.find_by(id: params[:game_id])
@deck = @game.deck
@card = @deck.cards.first
end

post '/games' do
  if current_user
  game = current_user.games.create(params[:game])
else
  game = default_user.games.create(params[:game])
end
  deck = game.deck
  card = deck.cards.first
  redirect "/games/#{game.id}/cards/#{card.id}"
end

