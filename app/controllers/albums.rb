namespace '/albums' do
  get '/:album_id/photos/:photo_id' do
    @photo = Photo.find(params[:photo_id])
    erb :'photos/show'
  end


end
