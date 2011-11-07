class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :decimal, :precision => 8, :scale => 2
      t.integer :category_id
      t.text :description

      t.timestamps
    end
  end
end
