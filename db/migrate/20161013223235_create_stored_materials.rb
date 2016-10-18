class CreateStoredMaterials < ActiveRecord::Migration
  def change
    create_table :stored_materials do |t|
      t.text :description
      t.integer :scope_cycle_id
      t.decimal :stored_at_cycle_start
      t.decimal :received_this_cycle
      t.integer :installed_this_cycle
      t.decimal :stored_at_cycle_end

      t.timestamps null: false
    end
  end
end
