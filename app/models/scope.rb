class Scope < ActiveRecord::Base


	belongs_to :project
	belongs_to :csi_division
	belongs_to :billing_preiod

	belongs_to :contributor, :class_name => 'Organization', :foreign_key => 'contributor_id'
	belongs_to :owner, :class_name => 'Organization', :foreign_key => 'owner_id'

end
