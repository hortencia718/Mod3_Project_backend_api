class ReviewsController < ApplicationController

    def index 
        @reviews = Review.all
        render json: @reviews
    end


    def create 
        @review = Review.create(review_params)
        render json: @review   
    end



    def destroy
        @review = Review.find_by(id: params[:id])
        @review.destroy
        render json: @review
    end

    private

    def review_params
        params.permit(:user_id, :flavor_id, :topping_id, :milk_id, :scoop_id, :review)
    end

end
