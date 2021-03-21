class CommunityMemberSerializer < ActiveModel::Serializer
  attributes :id, :facilitator
  has_one :member
  has_one :community
end
