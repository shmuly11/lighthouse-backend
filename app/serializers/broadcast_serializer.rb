class BroadcastSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :start_date, :end_date, :time, :url, :location, :list, :people, :community
  belongs_to :community
end
