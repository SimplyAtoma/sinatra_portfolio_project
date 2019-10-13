class VideogamesController < ApplicationController
  get '/videogames'
    erb :index
  end
  
  get '/videogames/new' do 
    erb :'videogames/new'
  end 
  
  get '/videogames/:id/edit' do
    
  end 
  
  patch '/videogames/:id/edit' do
    
  end 
  
  delete '/videogames/:id' do
    
  end 

  get '/videogames/:id' do
    @videogame = Videogame.find(id: params[:id])

    if @videogame
      redirect :"/videogames/show"
    else
      redirect '/videogames'
  end
  
  post '/videogames' do 
    @videogame = Videogame.new(name: params[:name],console: params[:console],genre: params[:genre])
    
    if @videogame.save
      redirect "/videogames/#{@videogame.id}"
    else 
      redirect '/videogames/new'
    end 
  end 
end