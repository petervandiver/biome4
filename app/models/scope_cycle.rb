class ScopeCycle < ActiveRecord::Base

	has_many :documents
	has_one :sov, :dependent => :destroy
	has_one :stored_material, :dependent => :destroy
	belongs_to :billing_period
	belongs_to :scope


end
