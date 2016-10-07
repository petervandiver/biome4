class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :organization_id
      t.string :project_number
      t.string :estimated_spend
      t.string :square_feet
      t.integer :building_type_id
      t.date :start_date
      t.date :end_date
      t.string :project_address
      t.string :project_address_zip

      t.timestamps null: false
    end
  end
end
