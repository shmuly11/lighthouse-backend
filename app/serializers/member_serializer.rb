class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :age, :image, :communities, :requests, :offers
  has_many :communities 
end
