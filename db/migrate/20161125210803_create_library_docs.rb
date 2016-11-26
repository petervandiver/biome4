class CreateLibraryDocs < ActiveRecord::Migration
  def change
    create_table :library_docs do |t|
      t.string :name
      t.string :doc

      t.timestamps null: false
    end
  end
end
