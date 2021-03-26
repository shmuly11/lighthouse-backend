class BroadcastsController < ApplicationController

    def create
        
         broadcast = Broadcast.create(broadcast_params)
         render json: broadcast


    end

    private

    def broadcast_params
        params.permit(:community_id, :name, :color, :start_date, :end_date, :time, :url, :location, :list, :people)
    end

    
end
