class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.string :product
      t.references :cart, foreign_key: true
      t.integer :quanity
      t.decimal :price

      t.timestamps
    end
  end
end
