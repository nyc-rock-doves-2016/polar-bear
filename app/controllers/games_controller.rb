# potential game show page
get '/decks/:id/games/new' do

  @deck = Deck.find_by(id: params[:id])
  @game = Game.create(deck_id: params[:id], user_id: session[:user_id])
  @card = Card.find_by(id: rand(1..5))

  erb :'/games/show'
end

# get '/games' do
#   game = Game.new(deck_id: params[:deck_id], user_id: session[:user_id])
#   binding.pry
#   redirect '/games/:id/cards/:card_id'
# end


post '/games/:id/cards/:card_id' do


  erb :'/games/show'
end

post '/games/:id/cards/:card_id/guess' do

end

