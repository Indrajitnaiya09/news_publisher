class CreateUpcomingGadgets < ActiveRecord::Migration[6.0]
  def change
    create_table :upcoming_gadgets do |t|
      t.string :product_type, null: false
      t.string :brand_name, null: false
      t.float :price, null: false
      t.text :description, null: false
      t.date :expected_launching_date
      t.boolean :is_launched

      t.timestamps
    end
  end
end
