class Assigned < ApplicationRecord
  

  belongs_to :request, :class_name => "RequestOffer"
  belongs_to :offer, :class_name => "RequestOffer"

  belongs_to :member
  belongs_to :member1, :class_name => "Member"
  
  

end
