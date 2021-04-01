class CommunityMembersController < ApplicationController
  def create
    community = Community.find(com_member_params[:community_id])
    if community.authenticate(com_member_params[:password])
      com_member = CommunityMember.create(member_id: com_member_params[:member_id], community_id: com_member_params[:community_id])
      render json: com_member.member
    else
      render json: { errors: ["Invalid password"] }, status: :unauthorized
    end
  end

  def admin
    com_member = CommunityMember.find_by(com_member_params)
    render json: {admin: com_member.facilitator}
  end

  private

  def com_member_params
    params.permit(:member_id, :community_id, :password)
  end

end
