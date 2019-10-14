class SessionController < ApplicationController
  
  get '/login' do 
    erb :'session/login'
  end 
  
  post '/login' do 
    
  end 
end 