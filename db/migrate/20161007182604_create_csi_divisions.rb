class CreateCsiDivisions < ActiveRecord::Migration
  def change
    create_table :csi_divisions do |t|
      t.string :code
      t.string :title
      t.string :code_title

      t.timestamps null: false
    end
  end
end
