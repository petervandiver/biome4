class CreateScopeCycles < ActiveRecord::Migration
  def change
    create_table :scope_cycles do |t|
      t.integer :billing_period_id
      t.integer :scope_id
      t.integer :contributor_id
      t.integer :owner_id
      t.date :cycle_start_date
      t.date :cycle_end_date
      t.boolean :owner_approved
      t.boolean :contributor_approved
      t.boolean :cycle_suspended
      t.boolean :cycle_cancelled
      t.decimal :original_contract_amt
      t.decimal :completed_to_date_total
      t.decimal :stored_materials_total
      t.decimal :retainage
      t.decimal :less_owner_purchases
      t.decimal :less_previous_pay_request
      t.decimal :amount_due

      t.timestamps null: false
    end
  end
end
