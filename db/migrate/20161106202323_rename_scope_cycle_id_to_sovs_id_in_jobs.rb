class RenameScopeCycleIdToSovsIdInJobs < ActiveRecord::Migration
  def change
  	rename_column :jobs, :scope_cycle_id, :sov_id
  end
end
