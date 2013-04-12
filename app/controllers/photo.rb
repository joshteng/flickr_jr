namespace '/photos' do
  get '/new/?' do
    @albums = current_user.albums
    erb :"photos/new"
  end

  post '/create' do
    
  end

end
