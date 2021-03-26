class RequestOfferSerializer < ActiveModel::Serializer
  attributes :id, :assigned, :content, :member_name, :member_id, :start_date, :end_date, :time, :url, :location, :title, :broadcast_id, :requests, :offers, :helpers, :helpeds
  # has_one :member
  # has_one :type
  
end
