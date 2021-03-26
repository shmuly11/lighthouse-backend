class CommunitySerializer < ActiveModel::Serializer
  attributes :id, :name, :requests, :offers, :broadcasts
  has_many :requests
  has_many :offers
end
