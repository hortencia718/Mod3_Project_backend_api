class ScoopsController < ApplicationController
    
    def index 
        @scoops = Scoop.all
        render json: @scoops
    end


end
