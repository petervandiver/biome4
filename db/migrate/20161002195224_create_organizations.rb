class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :description
      t.string :fed_tax_id
      t.string :hq_zip
      t.boolean :validated
      t.integer :field_id
      t.integer :annual_rev_id
      t.integer :employee_count_id

      t.timestamps null: false
    end
  end
end
