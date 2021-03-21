class CreateCommunityMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :community_members do |t|
      t.boolean :facilitator
      t.references :member, null: false, foreign_key: true
      t.references :community, null: false, foreign_key: true

      t.timestamps
    end
  end
end
