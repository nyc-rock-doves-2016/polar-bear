get '/users/new' do

  @user = User.new

  erb :'/users/new'
end

post '/users' do
   user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    erb :'/users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  @games = current_user.games

  erb :'/users/show'
end
