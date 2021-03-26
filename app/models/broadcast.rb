class Broadcast < ApplicationRecord
  serialize :list, Array
  
  belongs_to :community
  has_many :request_offers
end
