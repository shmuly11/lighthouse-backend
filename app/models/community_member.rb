class CommunityMember < ApplicationRecord
  belongs_to :member
  belongs_to :community
end
