class AddDocNameToDocuments < ActiveRecord::Migration
  def change
  	add_column :documents, :doc_name, :string
  end
end
