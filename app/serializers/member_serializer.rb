class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :age, :communities, :requests, :offers
  has_many :communities 
end
