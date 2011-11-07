class AddDetailsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :released_on, :date
    add_column :products, :rating, :integer
    add_column :products, :discontinued, :boolean
  end
end
