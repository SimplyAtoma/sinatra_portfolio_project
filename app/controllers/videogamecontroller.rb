class VideogamesController < ApplicationController

  get '/videogames'
    erb :index
  end


  get '/videogames/:id' do
    @videogame = Videogame.find(id: params[:id])

    if @videogame
      redirect :"/videogames/#{videogame.id}"
    else
      redirect '/videogames'
    end
  end
end
