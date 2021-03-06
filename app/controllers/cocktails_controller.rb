class CocktailsController < ApplicationController
    def index
        @cocktails = Cocktail.all
    end

    def new
        @cocktail = Cocktail.new
        @dose = Dose.new
        @ingredients = Ingredient.all
    end

    def create
        @cocktail = Cocktail.new(cocktail_params)
        if @cocktail.save
            redirect_to cocktail_path(@cocktail)
        else
            render :new
        end
    end

    def show
        @cocktail = Cocktail.find(params[:id])
        @doses = @cocktail.doses
        @dose = Dose.new
    end

    def destroy
        Cocktail.find(params[:id]).delete
        
        redirect_to cocktails_path
    end


    private
    def cocktail_params
        params.require(:cocktail).permit(:name, :photo)
    end

end
