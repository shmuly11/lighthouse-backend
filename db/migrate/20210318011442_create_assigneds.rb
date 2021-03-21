class CreateAssigneds < ActiveRecord::Migration[6.1]
  def change
    create_table :assigneds do |t|
      # t.references :member, foreign_key: true
      t.references :request, foreign_key: { to_table: 'request_offers' }
      t.references :offer, foreign_key: { to_table: 'request_offers' }
      t.references :member, foreign_key: true
      t.references :member1, foreign_key: { to_table: 'members' }
      
      t.boolean :completed

      t.timestamps
    end
  end
end
