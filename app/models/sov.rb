class Sov < ActiveRecord::Base

	belongs_to :scope_cycle
	has_many :jobs, :dependent => :destroy
	accepts_nested_attributes_for :jobs, :reject_if => :all_blank, :allow_destroy => true
end
