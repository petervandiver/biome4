class Sov < ActiveRecord::Base

	belongs_to :scope_cycle
	has_many :jobs
	accepts_nested_attributes_for :jobs
end
