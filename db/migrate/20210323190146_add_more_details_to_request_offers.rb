class AddMoreDetailsToRequestOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :request_offers, :list, :string
    add_column :request_offers, :people, :integer
    add_column :request_offers, :title, :string
  end
end
