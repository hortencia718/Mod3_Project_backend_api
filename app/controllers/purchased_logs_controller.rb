class PurchasedLogsController < ApplicationController

    def index 
        @purchasedLogs = PurchasedLog.all
        render json: @purchasedLogs
    end

    def create
        @purchasedLog = PurchasedLog.create(purchasedLog_params)
        render json: @purchasedLog  
    end

    private
    def purchasedLog_params
        params.permit(:user_id, :flavor_id, :topping_id, :milk_id, :scoop_id, :price)
    end

end
