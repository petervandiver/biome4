class ScopeCycle < ActiveRecord::Base

	has_many :documents
	has_one :sov
	has_one :stored_material
	belongs_to :billing_period


end
