class ToppingsController < ApplicationController
   
    def index 
        @toppings = Topping.all
        render json: @toppings
    end

end
