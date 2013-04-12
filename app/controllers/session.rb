namespace '/sessions' do
  post '/login/?' do

    user = User.find_by_email(params[:email])
    debugger
    login(user)
  end

  delete '/logout/?' do
    session[:current_user_id] = nil
    @errors = "Successfully logged out!"
    redirect '/'
  end
end
