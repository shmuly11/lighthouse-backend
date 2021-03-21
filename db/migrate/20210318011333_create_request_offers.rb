class CreateRequestOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :request_offers do |t|
      t.references :member, null: false, foreign_key: true
      t.references :broadcast, null: false, foreign_key: true
      t.boolean :assigned
      t.string :content

      t.timestamps
    end
  end
end
