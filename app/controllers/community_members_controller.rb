class CommunityMembersController < ApplicationController
  def create
    com_member = CommunityMember.create(com_member_params)

  end

  private

  def com_member_params
    params.permit(:member_id, :community_id)
  end

end
