class AddContractAttributesToScopes < ActiveRecord::Migration
  def change
  	add_column :scopes, :contract_number, :string
  	add_column :scopes, :contract_amount, :decimal
  end
end
