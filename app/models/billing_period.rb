class BillingPeriod < ActiveRecord::Base

	has_many :scopes
	has_many :scope_cycles

end
