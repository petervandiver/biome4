class CreateSovs < ActiveRecord::Migration
  def change
    create_table :sovs do |t|
      t.integer :scope_cycle_id

      t.timestamps null: false
    end
  end
end
