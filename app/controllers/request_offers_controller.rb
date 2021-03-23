class RequestOffersController < ApplicationController
    def offers
        render json: RequestOffer.offers
    end

    def requests
        render json: RequestOffer.requests
    end

    def create    
        req = RequestOffer.create(req_params)
        render json: req
    end

    def new_offer
        
        offer = RequestOffer.create(offer_params[:new_offer])
        assigned = Assigned.new(req_params[:new_assigned])
        # p = req_params[:new_assigned]
        assigned.update(offer_id: offer.id)
        assigned.save
        req = RequestOffer.find(offer_params[:new_assigned][:request_id])
        req.update(assigned: true)
        render json: offer
   
    end

    def update 
        req = RequestOffer.find(params[:id])
        req.update(req_params)
        render json: req
    end

    def destroy
        req = RequestOffer.find(params[:id])
        req.destroy
    end

    private

    def req_params
        params.permit(:member_id, :content, :start_date, :end_date, :time, :url, :location, :offer, :broadcast_id, :assigned, new_assigned:[:member_id, :member1_id, :request_id])
    end

    def offer_params
        params.permit(new_offer: [:member_id, :content, :start_date, :end_date, :time, :url, :location, :offer, :broadcast_id, :assigned], new_assigned:[:member_id, :member1_id, :request_id])
    end
end
