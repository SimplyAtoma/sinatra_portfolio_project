class VideogamesController < ApplicationController
  get '/videogames'
    erb :index
  end
  
  #create new page
  get '/videogames/new' do 
    erb :'videogames/new'
  end 
  
  #edit video game page
  get '/videogames/:id/edit' do
    @videogame = Videogame.find(id: params[:id])
    erb :"videogames/edit"
  end 
  
  patch '/videogames/:id/edit' do
    
  end 
  
  delete '/videogames/:id' do
    
  end 
  
  #new game added 
  post '/videogames' do 
    @videogame = Videogame.new(name: params[:name],console: params[:console],genre: params[:genre])
    
    if @videogame.save
      redirect "/videogames/#{@videogame.id}"
    else 
      redirect '/videogames/new'
    end 
  end 

  #show game page
  get '/videogames/:id' do
    @videogame = Videogame.find(id: params[:id])

    if @videogame
      redirect :"/videogames/show"
    else
      redirect '/videogames'
  end
  

end