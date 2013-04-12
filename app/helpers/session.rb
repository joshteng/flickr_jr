helpers do

  def login(user)
    if user
      session[:current_user_id] = user.id
      redirect_to_the_right_url
    else
      session[:errors] = "Failed to login"
      redirect '/'
    end
  end

  def current_user
    User.find_by_id(session[:current_user_id])
  end

  def login?
    @current_user ||= current_user
    puts @current_user
    @current_user ? true : false
  end

  def authenticate!
    unless login?
      store_url_for_redirect
      session[:errors] = "Please login before you can vote or post"
      redirect '/'
    end
  end

  def redirect_to_the_right_url
    url = session[:redirect_url]
    if url      
      session[:redirect_url] = nil
      redirect url
    else
      #should I redirect to user albums page instead?
      redirect '/'
    end
  end

  def store_url_for_redirect
    session[:redirect_url] = request.path
  end

end
