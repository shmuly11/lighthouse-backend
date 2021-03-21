class CreateBroadcasts < ActiveRecord::Migration[6.1]
  def change
    create_table :broadcasts do |t|
      t.references :community, null: false, foreign_key: true
      t.string :name
      t.string :color
      t.string :features

      t.timestamps
    end
  end
end
