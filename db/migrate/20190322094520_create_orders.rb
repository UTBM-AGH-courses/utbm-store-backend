class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :town
      t.string :zip_code

      t.timestamps
    end
  end
end
