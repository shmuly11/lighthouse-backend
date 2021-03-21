class RequestOffersController < ApplicationController
    def offers
        render json: RequestOffer.offers
    end

    def requests
        render json: RequestOffer.requests
    end

    def create
        
        req = RequestOffer.create(req_params)
        
        

    end

    private

    def req_params
        params.permit(:member_id, :content, :start_date, :end_date, :time, :url, :location, :offer, :broadcast_id)
    end
end
