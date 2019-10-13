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
    @videogame = Videogame.find(id: params[:id])
    
    if @videogame.update(params[:videogame])
      redirect "/videogames/#{@videogame.id}"
    else 
      redirect "/videogames/#{@videogame.id}/edit"
    end 
  end 
  
  #delete video game
  delete '/videogames/:id' do
    videogame = Videogame.find(id: params[:id])
    
    if videogame.destroy
      redirect "/videogames"
    else 
      redirect "/videogames/#{videogame.id}"
    end 
  end 
  
  #new game added 
  post '/videogames' do 
    @videogame = Videogame.new(params)
    
    if @videogame.save
      redirect "/videogames"
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