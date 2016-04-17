helpers do

  def current_user
     user = User.find_by(id: session[:user_id])
     if user && user.id != 1
      user
    else
      return nil
    end
  end

  def logged_in?
    !!(current_user)
  end

  def default_user
    User.find(1)
  end
end
