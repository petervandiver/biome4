class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.integer :scope_cycle_id
      t.string :doc

      t.timestamps null: false
    end
  end
end
