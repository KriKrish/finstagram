helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end
end

get '/' do
    @finstagram_posts = FinstagramPost.order(created_at: :desc)
    #@current_user = User.find_by(id: session[:user_id])
    erb(:index)
  end

  get '/signup' do     # if a user navigates to the path "/signup",
    @user = User.new   # setup empty @user object
    erb(:signup)       # render "app/views/signup.erb"
  end  

  post '/signup' do
    email      = params[:email]
    avatar_url = params[:avatar_url]
    username   = params[:username]
    password   = params[:password]
  
    @user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password })
  
    if @user.save
      #"User #{username} saved!"
      redirect to('/login')
    else
      erb(:signup)
    end
  end

  get '/login' do    # when a GET request comes into /login
    erb(:login)      # render app/views/login.erb
    #params.to_s
  end

  post '/login' do
    username = params[:username]
    password = params[:password]
  
    user = User.find_by(username: username)
  
    if user && user.password == password
      session[:user_id] = user.id
    #"Success! User with id #{session[:user_id]} is logged in!"
     redirect to('/')
    else
      #"Login failed."
      @error_message = "Login failed."
      erb(:login)
    end
  end

  get '/logout' do
    session[:user_id] = nil
    #"Logout successful!"
    redirect to('/')
  end

  

  get '/finstagram_posts/new' do
    @finstagram_post = FinstagramPost.new
    erb(:"finstagram_posts/new")
  end
  
  post '/finstagram_posts' do
    photo_url = params[:photo_url]
  
    @finstagram_post = FinstagramPost.new({ photo_url: photo_url, user_id: current_user.id })
  
    if @finstagram_post.save
      redirect(to('/'))
    else
      erb(:"finstagram_posts/new")
    end
  end

  get '/finstagram_posts/:id' do
    #params[:id]
    @finstagram_post = FinstagramPost.find(params[:id])   # find the finstagram post with the ID from the URL
    #escape_html @finstagram_post.inspect        # print to the screen for now
    erb(:"finstagram_posts/show")               # render app/views/finstagram_posts/show.erb
  end