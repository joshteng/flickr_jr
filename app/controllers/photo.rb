namespace '/photos' do
  get '/new/?' do
    @albums = current_user.albums
    erb :"photos/new"
  end

  post '/create' do
    album = Album.find(params[:album_id])
    @photo = album.photos.build
    @photo.source = params[:file_path]
    if @photo.save
      redirect "/albums/#{album.id}/photos/#{@photo.id}"
    else
      session[:errors] = "failed to save photo"
      redirect "/photos/new"
    end
  end

end
