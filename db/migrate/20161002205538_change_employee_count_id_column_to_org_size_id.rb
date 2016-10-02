class ChangeEmployeeCountIdColumnToOrgSizeId < ActiveRecord::Migration
  def change
  	rename_column :organizations, :employee_count_id, :org_size_id
  end
end
