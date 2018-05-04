class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.timestamps
      t.string :customer
    end
  end
end
