before do
  if session[:errors]
    @errors = session[:errors]
    session[:errors] = nil
  end
end

get '/' do
  @photos = Photo.all
  erb :index
end
