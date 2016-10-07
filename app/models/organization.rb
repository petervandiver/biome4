class Organization < ActiveRecord::Base

	has_one :org_admin
	has_many :projects

	has_many :contributor_scopes, :class_name => 'Scope', :foreign_key => 'contributor_id'
	has_many :owner_scopes, :class_name => 'Scope', :foreign_key => 'owner_id'

	belongs_to :field
	belongs_to :org_size
	belongs_to :annual_rev



end
