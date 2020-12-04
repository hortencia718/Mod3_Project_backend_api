class MilksController < ApplicationController

    def index 
        @milks = Milk.all
        render json: @milks
    end

end
