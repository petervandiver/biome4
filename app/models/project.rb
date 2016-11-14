class Project < ActiveRecord::Base

	belongs_to :organization
	belongs_to :building_type
	has_many :scopes, :dependent => :destroy

end
