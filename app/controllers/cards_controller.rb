get '/games/:game_id/cards/:id' do
@game = Game.find_by(id: params[:game_id])
@deck = @game.deck
@card = Card.find_by(id: params[:id])

erb :'/cards/show'
end


