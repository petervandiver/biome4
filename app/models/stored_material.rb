class StoredMaterial < ActiveRecord::Base

	belongs_to :scope_cycle
	has_many :material_line_items
	accepts_nested_attributes_for :material_line_items
	
end
