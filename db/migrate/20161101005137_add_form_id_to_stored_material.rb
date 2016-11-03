class AddFormIdToStoredMaterial < ActiveRecord::Migration
  def change
  	add_column :stored_materials, :form_id, :string
  end
end
