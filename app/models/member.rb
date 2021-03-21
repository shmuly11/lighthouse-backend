class Member < ApplicationRecord
    has_secure_password
    has_many :community_members
    has_many :communities, through: :community_members
    has_many :broadcasts
    has_many :request_offers

    has_many :assigneds
    has_many :assigned_helpeds, class_name: "Assigned", :foreign_key => "member1_id"
    has_many :helpeds, through: :assigned_helpeds, source: :member
    has_many :assigned_helpers, class_name: "Assigned", :foreign_key => "member_id"
    has_many :helpers, through: :assigned_helpers, source: :member1

    validates :name, :email, presence: true
    validates :email, uniqueness: true


   def requests 
    self.request_offers.where(offer: false)
   end

   def offers 
    self.request_offers.where(offer: true)
   end

    
end
