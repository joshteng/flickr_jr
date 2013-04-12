namespace '/users' do
  get '/new/?' do
    erb :"users/new"
  end

  get '/:id/edit/?' do
    @user = User.find_by_id(params[:id])
    if @user
      erb :"users/edit"
    else
      session[:errors] = "Can't find such user"
      redirect '/'
    end
  end

  post '/create' do
    user = User.new(params[:user])
    if user.save
      login user
      redirect_to_the_right_url
    else
      session[:errors] = "Sorry. We failed to create an account for you. Please try again!"
      redirect '/'
    end
  end

  #delete and put to be implemented

end
