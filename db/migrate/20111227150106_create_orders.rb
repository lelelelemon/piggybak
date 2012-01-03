class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :billing_address, :null => false
      t.references :shipping_address, :null => false

      t.references :user
      t.string :email, :null => false
      t.string :phone, :null => false

      t.float :total, :null => false
      t.float :total_due, :null => false
      t.float :tax_charge, :null => false
      t.string :status, :null => false

      t.timestamps
    end
  end
end

# Note: To force precision, alter column type in database console
