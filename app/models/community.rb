class Community < ApplicationRecord
    has_many :community_members
    has_many :members, through: :community_members
end
