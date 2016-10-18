class ScopeCycle < ActiveRecord::Base

	has_many :documents
	has_many :jobs
	has_many :stored_materials
	belongs_to :billing_period


	accepts_nested_attributes_for :documents, :jobs, :stored_materials



end
