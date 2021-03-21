class Broadcast < ApplicationRecord
  belongs_to :community
  has_many :request_offers
end
