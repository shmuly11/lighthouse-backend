class AssignedSerializer < ActiveModel::Serializer
  attributes :id, :completed
  has_one :requestOffer
  has_one :member
end
