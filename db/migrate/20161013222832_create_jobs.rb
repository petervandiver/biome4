class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.text :description
      t.decimal :value
      t.decimal :previous_complete
      t.decimal :this_application
      t.string :completed_to_date_percent
      t.decimal :completed_to_date_value
      t.integer :scope_cycle_id

      t.timestamps null: false
    end
  end
end
