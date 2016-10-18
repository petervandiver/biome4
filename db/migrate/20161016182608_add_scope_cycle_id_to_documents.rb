class AddScopeCycleIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :scope_cycle_id, :integer
  end
end
