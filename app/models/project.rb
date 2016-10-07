class Project < ActiveRecord::Base

	belongs_to :organization
	belongs_to :building_type

end
