class CommunityMembersController < ApplicationController
  def create
    com_member = CommunityMember.create(com_member_params)
    render json: com_member.community
  end

  def admin
    com_member = CommunityMember.find_by(com_member_params)
    render json: {admin: com_member.facilitator}
  end

  private

  def com_member_params
    params.permit(:member_id, :community_id)
  end

end
