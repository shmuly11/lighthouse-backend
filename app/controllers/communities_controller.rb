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
        
        community = Community.create(name: community_params[:name], password: community_params[:password])
        CommunityMember.create(community_id: community.id, member_id: community_params[:member_id], facilitator: true)
        # Broadcast.create(community_id: community.id)
        Broadcast.create(community_id: community.id, name: "basic", color: "blue", people: 1)
        Broadcast.create(community_id: community.id, name: "miscellaneous", color: "green", start_date: "1", end_date: "1", location: "1", people: 1, time: "1", url: "1", list: ["1"])
        member = Member.find(community_params[:member_id])
        render json: member
    end

    private

    def community_params
        params.permit(:member_id, :name, :password)
    end
   
end
