class AddDocToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :doc, :string
  end
end
