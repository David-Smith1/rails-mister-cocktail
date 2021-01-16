class DosesController < ApplicationController

    def new
        @cocktail = Cocktail.find(params[:cocktail_id])
        @dose = Dose.new
    end

    def destroy
        @dose = Dose.find(params[:id])
        @dose.delete

        redirect_to cocktail_path(@cocktail)
    end

    
end
