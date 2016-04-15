get '/login' do
  erb :'/sessions/login'
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect '/'
  else
    erb :'/sessions/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
