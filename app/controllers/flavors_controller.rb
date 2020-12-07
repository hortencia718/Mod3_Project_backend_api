class FlavorsController < ApplicationController
   
    def index 
        # byebug
        @flavors = Flavor.all
        render json: @flavors
    end

    def update
        # byebug
        # find the user sent from params - @hortencia is temporary for testing
        @hortencia = User.find_by(name: "Hortencia")
        # find flavor by id
        @flavor = Flavor.find_by(id: params[:id])

        # check if the association between user and flavor exists
        if Like.exists?(user: @hortencia, flavor: @flavor)
            # if it exists find association
            @like = Like.find_by(user: @hortencia, flavor: @flavor)
            # toggle is_like column 
            @like.toggle!(:is_like)
            # destroy association - however @like still holds a temporary value in memory that you can send to the frontend 
            @like.destroy
        else
            # if association does not exist create association and set it to true
            @like = Like.create(
                is_like: true,
                user: @hortencia, 
                flavor: @flavor
            )
        end
        
        # byebug
        # return flavor, like and user
        render json: { flavor: @flavor, like: @like, user: @hortencia }
    end


    private
    def flavor_params 
        permit.params(:id, :name, :price, :image)
    end
end
