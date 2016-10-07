class CreateBillingPeriods < ActiveRecord::Migration
  def change
    create_table :billing_periods do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
