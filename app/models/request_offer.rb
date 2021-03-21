class RequestOffer < ApplicationRecord
  # serialize :content, Array
  belongs_to :member
  belongs_to :broadcast

  has_many :assigneds
    # has_many :assigned_helpeds, class_name: "Assigned", :foreign_key => "member1_id"
    # has_many :helpeds, through: :assigned_helpeds, source: :member
    # has_many :assigned_helpers, class_name: "Assigned", :foreign_key => "member_id"
    # has_many :helpers, through: :assigned_helpers, source: :member1

    scope :requests, -> { where(offer: false) }
    scope :offers, -> { where(offer: true) }

    def member_name
      self.member.name
    end
  
end
