class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :short_description
      t.decimal :price
      t.decimal :best_price
      t.integer :quantity
      
      t.timestamps
    end
  end
end
