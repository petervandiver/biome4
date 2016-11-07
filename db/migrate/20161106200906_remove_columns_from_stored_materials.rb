class RemoveColumnsFromStoredMaterials < ActiveRecord::Migration
  def change
  	remove_column :stored_materials, :description
    remove_column :stored_materials, :stored_at_cycle_start
    remove_column :stored_materials, :received_this_cycle
    remove_column :stored_materials, :installed_this_cycle
    remove_column :stored_materials, :stored_at_cycle_end
  end
end
