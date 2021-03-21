class BroadcastSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :features
  has_one :community
end
