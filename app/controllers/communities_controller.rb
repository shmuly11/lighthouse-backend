class CommunitiesController < ApplicationController
    def index
        communities = Community.all
        render json: communities
    end

    def show
        community = Community.find(params[:id])
        render json: community
    end

    def create
        
        community = Community.create(name: community_params[:name])
        CommunityMember.create(community_id: community.id, member_id: community_params[:member_id], facilitator: true)
        Broadcast.create(community_id: community.id)
        render json: community
    end

    private

    def community_params
        params.permit(:member_id, :name)
    end
   
end
