# potential game show page
get '/games/:game_id/cards/:id' do
@game = Game.find_by(id: params[:game_id])
@deck = @game.deck
@card = @deck.cards.first
end




post '/games' do
  game = current_user.games.create(params[:game])
  deck = game.deck
  card = deck.cards.first
  redirect "/games/#{game.id}/cards/#{card.id}"
end

