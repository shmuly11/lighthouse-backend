class Community < ApplicationRecord
    has_secure_password
    has_many :community_members
    has_many :members, through: :community_members
    has_many :broadcasts
    has_many :request_offers, through: :broadcasts

    def requests 
        self.request_offers.where(offer: false)
    end

    def offers 
        self.request_offers.where(offer: true)
    end
end
