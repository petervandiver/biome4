class CreateScopes < ActiveRecord::Migration
  def change
    create_table :scopes do |t|
      t.string :name
      t.text :description
      t.boolean :visible_to_public
      t.integer :csi_division_id
      t.integer :billing_period_id
      t.boolean :sov_used
      t.boolean :stored_materials_used
      t.integer :owner_id
      t.integer :contributor_id
      t.string :send_invite_to
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
