class BeersController < ApplicationController
  def index
    @beers = Beer.all
    pp @beers
  end

  def create
    @beers = Beer.new(beer_params)
    if @beers.save
      redirect_to beers_index_path
    else
      render :new
    end
  end

  def new
    @beers = Beer.new
  end

  def beer_params
    params.require(:beer).permit(:name, :brand, :gradoAlcoholico, :yeastType)
  end
end
