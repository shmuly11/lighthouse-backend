class AddDetailsToRequestOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :request_offers, :start_date, :string
    add_column :request_offers, :end_date, :string
    add_column :request_offers, :time, :string
    add_column :request_offers, :url, :string
    add_column :request_offers, :location, :string
    
  end
end
