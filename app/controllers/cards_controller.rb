get '/games/:game_id/cards/:card_id' do
@game = Game.find_by(id: params[:game_id])
@deck = @game.deck
@card = Card.find_by(id: params[:card_id])

erb :'/cards/show'
end


