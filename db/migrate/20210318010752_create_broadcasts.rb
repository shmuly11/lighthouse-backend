class CreateBroadcasts < ActiveRecord::Migration[6.1]
  def change
    create_table :broadcasts do |t|
      t.references :community, null: false, foreign_key: true
      t.string :name
      t.string :color
      t.string :start_date
      t.string :end_date
      t.string :time
      t.string :url
      t.string :location
      t.string :list
      t.integer :people
    

      t.timestamps
    end
  end
end
