class AddOfferToRequestOffer < ActiveRecord::Migration[6.1]
  def change
    add_column :request_offers, :offer, :boolean
  end
end
