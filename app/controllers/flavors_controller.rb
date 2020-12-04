class FlavorsController < ApplicationController
   
    def index 
        @flavors = Flavor.all
        render json: @flavors
    end

    def update
        @flavor = Flavor.find_by(id: params[:id])
        @flavor.update(like: params[:like])
        render json: @flavor
    end


    private
    def flavor_params 
        permit.params(:id, :name, :price, :image, :like)
    end
end
