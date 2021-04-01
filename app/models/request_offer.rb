class RequestOffer < ApplicationRecord
  serialize :list, Array
  belongs_to :member
  belongs_to :broadcast

  # has_many :assigneds, dependent: :destroy
    has_many :assigned_requests, class_name: "Assigned", :foreign_key => "offer_id", dependent: :destroy
    has_many :requests, through: :assigned_requests, source: :request
    has_many :helpeds, through: :assigned_requests, source: :member
    
    has_many :assigned_offers, class_name: "Assigned", :foreign_key => "request_id", dependent: :destroy
    has_many :offers, through: :assigned_offers, source: :offer
    has_many :helpers, through: :assigned_offers, source: :member1

    scope :requests, -> { where(offer: false) }
    scope :offers, -> { where(offer: true) }

    def member_name
      self.member.name
    end

    def member_image
      self.member.image
    end
  
end
