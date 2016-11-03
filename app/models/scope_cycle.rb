class ScopeCycle < ActiveRecord::Base

	has_many :documents
	has_many :jobs
	has_many :stored_materials
	belongs_to :billing_period


end
