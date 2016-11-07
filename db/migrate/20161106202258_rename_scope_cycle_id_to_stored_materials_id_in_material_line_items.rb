class RenameScopeCycleIdToStoredMaterialsIdInMaterialLineItems < ActiveRecord::Migration
  def change
  	rename_column :material_line_items, :scope_cycle_id, :stored_material_id
  end
end
