class CreateOrgSizes < ActiveRecord::Migration
  def change
    create_table :org_sizes do |t|
      t.string :range

      t.timestamps null: false
    end
  end
end
