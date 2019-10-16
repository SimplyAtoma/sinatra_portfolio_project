require './config/environment'
class ApplicationController < Sinatra::Base

  configure do
    set :views, "app/views"
  	set :public_dir, "public"
  	enable :sessions
  	set :session_secret, "user"
  end

  get "/" do
  	erb :"videgames/index"
  end
  
  helpers do 
    def logged_in?
      !!session[:user_id]
    end 
    
    def current_user
      User.find_by_id(session[:user_id]) if logged_in?
    end 
  end 
end
