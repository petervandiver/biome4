class AddOrganizationIdToOrgAdmins < ActiveRecord::Migration
  def change
  	add_column :org_admins, :organization_id, :integer
  end
end
