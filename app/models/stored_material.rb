class StoredMaterial < ActiveRecord::Base

	belongs_to :scope_cycle
	has_many :material_line_items, :dependent => :destroy
	accepts_nested_attributes_for :material_line_items, :reject_if => :all_blank, :allow_destroy => true

end
