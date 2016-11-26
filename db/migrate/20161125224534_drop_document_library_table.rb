class DropDocumentLibraryTable < ActiveRecord::Migration
  def change
  	drop_table :document_libraries
  end
end
