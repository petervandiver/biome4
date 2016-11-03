class AddFormIdToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :form_id, :string
  end
end
