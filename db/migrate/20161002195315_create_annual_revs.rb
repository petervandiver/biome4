class CreateAnnualRevs < ActiveRecord::Migration
  def change
    create_table :annual_revs do |t|
      t.string :range

      t.timestamps null: false
    end
  end
end
