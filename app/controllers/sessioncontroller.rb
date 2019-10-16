class SessionController < ApplicationController
  
  get '/session/signup' do 
    erb :'session/signup'
  end 
  
  post '/signup' do 
  @user = User.new(name: "name", email: "email", password: "password")
  redirect '/videogames/new'
  end 
  
  get '/login' do 
    erb :'session/login'
  end 
  
  post '/login' do 
    @user = User.find_by(email: params[:email])
    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/videogames'
    else 
      redirect '/login'
    end 
  end 
  
  get '/logout' do 
    session.clear
    redirect '/login'
  end 
end 