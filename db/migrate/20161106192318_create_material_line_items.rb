class CreateMaterialLineItems < ActiveRecord::Migration
  def change
    create_table :material_line_items do |t|
      t.integer :scope_cycle_id
      t.text :description
      t.decimal :stored_at_cycle_start
      t.decimal :received_this_cycle
      t.decimal :installed_this_cycle
      t.decimal :stored_at_cycle_end

      t.timestamps null: false
    end
  end
end
