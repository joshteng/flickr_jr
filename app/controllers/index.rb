before do
  if session[:errors]
    @errors = session[:errors]
    session[:errors] = nil
  end
end

get '/' do
  # Look in app/views/index.erb
  erb :index
end
