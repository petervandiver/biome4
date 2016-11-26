class CreateDocumentLibraries < ActiveRecord::Migration
  def change
    create_table :document_libraries do |t|

      t.timestamps null: false
    end
  end
end
