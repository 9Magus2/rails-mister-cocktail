class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])

  end

  def new
    @cocktail = Cocktail.new 
  end

  def create
    @cocktail = Cocktail.new(params[:cocktail])
    @cocktail.save
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
