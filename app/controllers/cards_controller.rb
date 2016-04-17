get '/games/:game_id/cards/:card_id' do
@game = Game.find_by(id: params[:game_id])
@deck = @game.deck
@card = @deck.cards.sample

erb :'/cards/show'
end

post '/games/:game_id/cards/:card_id/guess' do

end
